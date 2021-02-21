#include <stdio.h>
#include <stdlib.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>
#include <math.h>
#include <vector>
#include "robot_defs.h"
#include "controller.h"
#include "main.h"
#include <iostream>


/* getRobotPositionEstimate()
 * This function is called by the controller to retrieve the current 
 * robot position estimate. 
 */



void getRobotPositionEstimate(RobotState& estimatePosn)
{
    // TODO: Write your procedures to set the current robot position estimate here

std::cout << estimatePosn.theta << std::endl;
estimatePosn = s_get_state;


}

/**
 * motionUpdate()
 * This function is called every time the position of the robot is
 * updated. The argument passed is the relative change in position of the 
 * robot in local robot coordinates (observed by odometry model), which 
 * may be subject to noise (according to motion model parameters).
 */
void motionUpdate(RobotState delta)
{
    // TODO: Write your motion update procedures here
    //prediction of the state using Odometry Motion Model
    double d_trans = sqrt(pow(delta.x,2) + pow(delta.y,2) );
    double d_rot1 =  atan2( delta.y, delta.x); // - theta
    double d_rot2 = delta.theta - d_rot1;

    /*
     * d_trans += noise_trans;
     * d_rot1 += noise_rot1;
     * d_rot2 += noise_rot2;
     */

    RobotState m_update_state = s_get_state; // current state is stored, s_get_state will be used in the Jacobi and then updated

    m_update_state.x += d_trans*cos(s_get_state.theta + d_rot1 );
    m_update_state.y += d_trans*sin(s_get_state.theta + d_rot1 );
    m_update_state.theta += d_rot1 + d_rot2 ; // differential model of wheel encoders


    Eigen::Matrix<double, 3, 3, Eigen::RowMajor> jacobi_G; //motion model Jacobian, ref:  CSE 571 and Sebastian Thrun/Probabilistic Robotics.
    Eigen::Matrix<double, 3,3, Eigen::RowMajor > jacobi_V; //control model Jacobian
    Eigen::Matrix<double,3, 3, Eigen::RowMajor>  odometryNoise;


    odometryNoise << s_get_params.odom_noise_translation_from_translation,   s_get_params.odom_noise_translation_from_translation,   s_get_params.odom_noise_translation_from_rotation,
                     s_get_params.odom_noise_translation_from_translation,   s_get_params.odom_noise_translation_from_translation,   s_get_params.odom_noise_translation_from_rotation,
                     s_get_params.odom_noise_rotation_from_translation,       s_get_params.odom_noise_translation_from_rotation,     s_get_params.odom_noise_rotation_from_rotation ;


    myfunctions::prepareJacobiMotionUpdate(jacobi_G, jacobi_V, d_trans, d_rot1);
/*
    std::cout << "jacobiG" << jacobi_G << std::endl;
    std::cout <<"jacobiV" << jacobi_V << std::endl;
    std::cout <<"COvariance" << Cov <<std::endl;
    std::cout << "After this " << std::endl;
    std::cout << "Noise Odo" << std::endl;
    std::cout << odometryNoise << std::endl;
*/
    Cov = jacobi_G* Cov * jacobi_G.transpose() + jacobi_V* odometryNoise* jacobi_V.transpose(); // prediction of Covariance
    s_get_state = m_update_state; // state/mean is updated/predicted

    Eigen::JacobiSVD<Eigen::MatrixXd> svd(Cov, Eigen::ComputeThinU | Eigen::ComputeThinV); //computes the eigen values of the Covariance matrix
    std::cout << svd.singularValues() << std::endl;

//  std::cout << Cov << std::endl;
//  std::cout << "Udated" << std::endl;
//  exit(1);


}

/**
 * sensorUpdate()
 * This function is called every time the robot detects one or more
 * landmarks in its field of view. The argument passed contains all 
 * marker obervations (marker index and position of marker in robot 
 * coordinates) for the current frame.
 */
void sensorUpdate(std::vector<MarkerObservation> observations)
{
    // TODO: Write your sensor update procedures here
    // updates the belief of the means of the state and their corresponding covariance using sensor model
   std::cout << "INSIDE SENSOR UPDATE" << std::endl;


    // H matrix is 2*times total indices x  3,  remember there are four landmarks in total
    // sensor model gives range or distance and bearing (phi) around Instantanoues axis of Rotation?, it's origin here
    // std::cout << "The size is " <<  observations.size() << std::endl;

    MarkerObservation marker;
    marker = observations.back();
    int size = observations.size();

    if( observations.size() != 0 ) {


        int observationId = marker.markerIndex;

        // add landmark measurement to the Z vector which is all measureements at aonce

        double X_Z = s_get_locations.at(observationId).x - s_get_state.x;
        double Y_Z = s_get_locations.at(observationId).y - s_get_state.y;
        // differnece or how far is the value from the center of Normal distribution mean

        double range = sqrt(pow(X_Z, 2) + pow(Y_Z, 2));

        double expectedDX = range;
        double expectedDY = atan2(Y_Z, X_Z) - s_get_state.theta;

        Matrix23D H;
        H << -X_Z / range, -Y_Z / range, 0,
                Y_Z / pow(X_Z, 2) * (1 / (1 + pow((Y_Z / X_Z), 2))), -1 / X_Z * 1 / pow((1 + (Y_Z / X_Z)), 2), -1;

//        std::cout << H << "H vlaue" << std::endl;


        /*
           HI.block< 2,3> (2*iL-2, 0) = H;
           iL++;

            std::cout << HI << std::endl;  // HI updates check
            if( iL == 2000) exit(1);

        */
        Eigen::Matrix2d Q;
        Q << s_get_params.sensor_noise_distance, 0,
                0, s_get_params.sensor_noise_orientation;


        Eigen::Matrix < double,Eigen::Dynamic,Eigen::Dynamic ,Eigen::RowMajor> I_Matrix = H * Cov * H.transpose() + Q;
        // std::cout << "Intermediate matris" << std::endl;
        // std::cout << I_Matrix.inverse() << std::endl;

        Eigen::Matrix < double,Eigen::Dynamic,Eigen::Dynamic ,Eigen::RowMajor> Kal_G = Cov * H.transpose() * I_Matrix.inverse();
        //std::cout << Kal_G << std::endl;

        double diffB = marker.orientation - expectedDY ;
        double diffD = marker.distance - expectedDX;

  //     myfunctions::resetPi(diffB); // fixing the range of randians from -pi to +pi in case it blows out
//      std::cout << diffB << "and " << diffD << std::endl;


        Eigen::Matrix < double,Eigen::Dynamic,Eigen::Dynamic ,Eigen::RowMajor> Z_(2,1);
        Z_ << diffD, diffB;


        Eigen::Matrix < double,Eigen::Dynamic,Eigen::Dynamic ,Eigen::RowMajor> mu = Kal_G*Z_ ;
//        std::cout << mu << std::endl;

        //update the positions

        s_get_state.x += mu(0,0);
        s_get_state.y += mu(1,0);
        s_get_state.theta+= mu(2,0);
       /*
        std::cout << "again" << std::endl;
        std::cout << mu(0,0) << mu(1,0) << mu(2,0) << std::endl;
        */

    //   getRobotPositionEstimate(s_get_state);



    }
    }

/**
 * myinit()
 * Initialization function that takes as input the initial 
 * robot state (position and orientation), and the locations
 * of each landmark (global x,y coordinates).
 */
void myinit(RobotState robotState, RobotParams robotParams,
            FieldLocation markerLocations[NUM_LANDMARKS]) {

    // TODO: Write your initialization procedures here
    robotState.x = 0.2;
    robotState.y = 0.1;
    robotState.theta = 0.1;

    Cov <<  0,0,0,
            0,0,0,
            1.0,1.0,1.0;  // supremely random numbers



    s_get_state = robotState;

    s_get_params = robotParams;
/*
 // Made a big blunder here assumed that I need to define the location somehow :D
    markerLocations[0].x =   2.5; //metres
    markerLocations[0].y =   1.5; // Q1
    s_get_locations.push_back(markerLocations[0]);
    markerLocations[1].x =  -2.5;
    markerLocations[1].y =   1.5; // Q2
    s_get_locations.push_back(markerLocations[1]);
    markerLocations[2].x =  -2.5;
    markerLocations[2].y =  -1.5;  //Q3
    s_get_locations.push_back(markerLocations[2]);
    markerLocations[3].x =   2.5;
    markerLocations[3].y =  -1.5;  //Q4
    s_get_locations.push_back(markerLocations[3]);
    // LET'S CREATE A LANDMARK VECTOR WHICH WILL BE GLOBALLLY ACCESSIBLE
*/

 for( int i =0; i< NUM_LANDMARKS; i++)
    s_get_locations.push_back(markerLocations[i]); // globally available;

  std::cout << "Inside INIT" << std::endl;
  std::cout << robotParams.sensor_noise_distance << std::endl;

}
/**
 * mydisplay()
 * This function is called whenever the display is updated. The controller
 * will draw the estimated robot position after this function returns.
 */

void mydisplay()
{
    // TODO: Write your drawing procedures here 
    //       (e.g., robot position uncertainty representation)
    // Example drawing procedure
    int pixelX, pixelY;
    double globalX = 1.0, globalY = -1.0;
    const int NUM_POINTS = 8;
    const double POINT_SPREAD = 0.2;
    
    //// Draw cyan colored points at specified global locations on field
    glBegin(GL_POINTS);
    glColor3f(0.0, 1.0, 1.0);
    for(int i=0; i<NUM_POINTS; i++){
        global2pixel(globalX, globalY + (i * POINT_SPREAD), pixelX, pixelY);
        glVertex2i(pixelX, pixelY);
    }
    glEnd();

}

/**
 * mykeyboard()
 * This function is called whenever a keyboard key is pressed, after
 * the controller has processed the input. It receives the ASCII value 
 * of the key that was pressed.
 *
 * Return value: 1 if window re-draw requested, 0 otherwise
 */
int mykeyboard(unsigned char key)
{
    // TODO: (Optional) Write your keyboard input handling procedures here
	
	return 0;
}


/**
 * Main entrypoint for the program.
 */
int main (int argc, char ** argv)
{
    // Initialize world, sets initial robot position
    // calls myinit() before returning
    runMainLoop(argc, argv);

    return 0;
}

