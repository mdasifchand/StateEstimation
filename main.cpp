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


/**
 * getRobotPositionEstimate()
 * This function is called by the controller to retrieve the current 
 * robot position estimate. 
 */

typedef  Eigen::Matrix <double, 3,3,Eigen::RowMajor> Mat3d;
static RobotParams rPar;
static FieldLocation* fL;
static Mat3d sigma;
static RobotState mu;


void getRobotPositionEstimate(RobotState& estimatePosn)
{
    // TODO: Write your procedures to set the current robot position estimate here
    
 //   estimatePosn.x = ;
  //  estimatePosn.y = 0.0;
  //  estimatePosn.theta = 0.0;

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
    /*

     r1` = R/2*(vr + vl)*cos(phi)
     t` = R/2*(vr+vl)* sin(phi)
     r2` = R/2*(vr-vl) [` indicates rate of change ie, x` = dx/dt)

     I would assume that this data is already part of delta and I just have to plug it inside the
     odometry motion model (without noise)

     assuming it's utr ur1 and ur2 as readings from odometry

    */
    RobotState pred_mu; // predicted mean state
    Mat3d sigma_t_p;
    Mat3d G;
    Mat3d R; //includes all those noises
    getRobotPositionEstimate(mu); // this is your last best estimate which you had
    pred_mu.x = mu.x + delta.x*cos(mu.theta  + delta.y);
    pred_mu.y = mu.y + delta.x*cos(mu.theta + delta.y);
    pred_mu.theta = mu.theta + mu.theta  + mu.y;
    pred_mu.theta = pred_mu.theta > M_PI ? pred_mu.theta - 2*M_PI: pred_mu.theta + 2*M_PI; // normalizing between -pi and +pi
    //computing 3x3 Jacobian matrix

    G << 0,   0,  -1*delta.x*sin(pred_mu.theta + delta.y),
         0,   0,   delta.x*cos(pred_mu.theta + delta.y),
         0,   0,    0;
    Mat3d J_G = Eigen::MatrixXd::Identity(3,3) + G;
   R << rPar.odom_noise_translation_from_translation, rPar.odom_noise_translation_from_translation, rPar.odom_noise_translation_from_rotation,
        rPar.odom_noise_translation_from_translation, rPar.odom_noise_translation_from_translation, rPar.odom_noise_translation_from_rotation,
        rPar.odom_noise_rotation_from_translation, rPar.odom_noise_rotation_from_translation, rPar.odom_noise_rotation_from_rotation;
   sigma_t_p = G*sigma*G.transpose() + R; //sigma is from t-1 sigma_t_p is basically predicting for state t from t-1
   sigma = sigma_t_p; // predicting sigma at t from t-1 and then updating the sigma
   mu = pred_mu;
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
    Eigen::Matrix< double, 500, 2, Eigen::RowMajor >A; // [ d1 theta1, d2 theta2, ...], rows are taken as 1000 at max,cols are 2
    Eigen::Matrix <double, 500, 2, Eigen::RowMajor> exZ;
    Eigen::Matrix <double, Eigen::Dynamic, 3, Eigen::RowMajor> H;
    Eigen::Matrix <double,Eigen::Dynamic,Eigen::Dynamic, Eigen::RowMajor> N; ; // initially set to zero.
    ; //sensor noise matrix
   //for( auto it = observations.begin(); it != observations.end(); ++it  ){

   for( std::size_t i=0; i < observations.size(); i++){
      // std::cout << "Current marker index is : " << it->markerIndex << std::endl;
      // std::cout << "marker distance         : " << it->distance << std::endl;
      // std::cout << "marker angel            : " << it->orientation << std::endl;
      // std::cout << std::endl;
       A.row(i) << observations[i].distance, observations[i].orientation;
       double zX = fL[observations[i].markerIndex].x - mu.x;
       double zY = fL[observations[i].markerIndex].y - mu.y;
       double range = sqrt(pow(zX,2)+ pow(zY,2));
       exZ.row(i) << range, atan2(zY,zX)-mu.theta;
       H.block<2,3>(2*i,0) <<  -zX/range,          -zY/range,        0,
                                                zY/pow(range,2),-zX/pow(range,2), -1;


       N.block<2,2000>(2*i,2*i) = Eigen::MatrixXd::Zero(2,2000);
       N.block<2,2>(2*i,2*i) << rPar.sensor_noise_distance, 0,
                                0, rPar.sensor_noise_orientation;
       //Kalman gain
       Eigen::MatrixXd Int = H* sigma * H.transpose() + N; //intermediate inverse, size of intermediate matrix Int is 2000x2000
      //TODO: Kalman gain and calculate innovation and update mu/sigma at the latest state       
       Eigen::MatrixXd K = sigma * H.transpose() * Int.inverse();




   }

    /*   M1 ------- M2
     *   M3 ------- M4
     */
}

/**
 * myinit()
 * Initialization function that takes as input the initial 
 * robot state (position and orientation), and the locations
 * of each landmark (global x,y coordinates).
 */
void myinit(RobotState robotState, RobotParams robotParams, 
            FieldLocation markerLocations[NUM_LANDMARKS])
{
    // TODO: Write your initialization procedures here
    robotState = {0,0,0}; // This is the origin which is at the center
/*
    //markerLocations[0] = {-135* METERS_PER_PIXEL,30* METERS_PER_PIXEL};
    //markerLocations[1] = {135* METERS_PER_PIXEL, 30* METERS_PER_PIXEL};
    //markerLocations[2] = {135* METERS_PER_PIXEL, -30*METERS_PER_PIXEL};
    //markerLocations[3] = {-135* METERS_PER_PIXEL, -30* METERS_PER_PIXEL};
*/
    mu = robotState;
    sigma << 0,0,0,
             0,0,0,
              0,0,0;
    rPar = robotParams;
    fL = markerLocations;
    //RobotParams are initialized from the text file
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
    
    
//    // Example drawing procedure
    //int pixelX, pixelY;
    //double globalX = 1.0, globalY = -1.0;
    //const int NUM_POINTS = 8;
    //const double POINT_SPREAD = 0.2;
    
    //// Draw cyan colored points at specified global locations on field
    //glBegin(GL_POINTS);
    //glColor3f(0.0, 1.0, 1.0);
    //for(int i=0; i<NUM_POINTS; i++){
    //    global2pixel(globalX, globalY + (i * POINT_SPREAD), pixelX, pixelY);
    //    glVertex2i(pixelX, pixelY);
    //}
    //glEnd();

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

