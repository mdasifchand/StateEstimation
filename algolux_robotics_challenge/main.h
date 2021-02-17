#ifndef _MAIN_H_
#define _MAIN_H_

#include <vector>
#include "robot_defs.h"
#include "eigen-3.2.10/Eigen/Dense"
#include <math.h>
#include "eigen-3.2.10/Eigen/SVD"



typedef Eigen::Matrix<double,3,3,Eigen::RowMajor> Matrix3D; // it's possible to use global typedefs from Eigen however if not for RowMajor, transposes should be used to compensate
typedef Eigen::Matrix< double, 4000, 3, Eigen::RowMajor > MatrixH;
typedef Eigen::Matrix < double,2, 3,Eigen::RowMajor> Matrix23D;  //2x3 matrix
typedef Eigen::Matrix <double,Eigen::Dynamic, Eigen::Dynamic, Eigen::RowMajor> MatrixXD;  //Matrix Dynamic

static MatrixH HI = Eigen::MatrixXd::Zero(4000,3);
static  Eigen::Matrix<double, 3, 3, Eigen::RowMajor> Cov ;
static  RobotParams s_get_params;  // static because I would like to keep it global and access it throughout this translation unit.
static RobotState s_get_initial;
static RobotState s_get_state;
static MatrixXD singularValueFromSVD;
static std::vector<FieldLocation> s_get_locations;


// Sets current robot position estimate
void getRobotPositionEstimate(RobotState& estimatePosn);

// Robot motion update
void motionUpdate(RobotState delta);

// Landmark sensor update
void sensorUpdate(std::vector<MarkerObservation> observations);

// Initialization and UI methods
void myinit(RobotState robotState, RobotParams robotParams, 
            FieldLocation markerLocations[NUM_LANDMARKS]);
void mydisplay();
int  mykeyboard(unsigned char key);


namespace myfunctions {  // to make sure they are unique enough ;)

// additional methods to aid the development

    void resetPi(double &angle) {   // the range of angle is between -pi to pi or  0 to 2pi radians;

        if (angle > 2 * M_PI) angle = angle - 2 * M_PI;
        else if (angle < 0) angle = angle + 2 * M_PI;

    }


    void prepareJacobiMotionUpdate(Matrix3D& jacobiG, Matrix3D& jacobiV, double& dtrans, double& drot1) {

         jacobiG << 1,   0,  -1*dtrans* sin(s_get_state.theta + drot1),
                    0,  1,    dtrans*cos(s_get_state.theta + drot1),
                    0,  0,                    1;

         jacobiV  << -1*dtrans*sin(s_get_state.theta + drot1), cos(s_get_state.theta + drot1),0,
                      dtrans*cos(s_get_state.theta + drot1), sin(s_get_state.theta + drot1), 0,
                      1,                                        0,                               0;

    }
}

#endif
