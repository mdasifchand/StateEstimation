#ifndef _MAIN_H_
#define _MAIN_H_

#include <vector>
#include "robot_defs.h"
#include <eigen3/Eigen/Dense>


typedef  Eigen::Matrix <double, 3,3,Eigen::RowMajor> Mat3d;
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

void unCertainityEstimation( RobotState mu, Mat3d& Cov )
{





}



int  mykeyboard(unsigned char key);

#endif
