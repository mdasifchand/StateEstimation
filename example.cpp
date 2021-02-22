#include <eigen3/Eigen/Dense>
#include <iostream>


int main(){



	Eigen::Matrix < double, 3,3 Eigen::RowMajor> A;
	
	Eigen::RowVector2f v1;
	
	A << 3,3,3
	     ,4,5,6,
	     7,3,4;

	v1 << 1, 0;

	for( int i=0; i<10; i++){

	A << A ;


		}


	std::cout << A;

return 0;
}
