# Install script for directory: /home/algo/Downloads/eigen-3.2.10/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/AdolcForward"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/AlignedVector3"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/ArpackSupport"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/AutoDiff"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/BVH"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/FFT"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/IterativeSolvers"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/KroneckerProduct"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/LevenbergMarquardt"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/MatrixFunctions"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/MoreVectorization"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/MPRealSupport"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/NonLinearOptimization"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/NumericalDiff"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/OpenGLSupport"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/Polynomials"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/Skyline"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/SparseExtra"
    "/home/algo/Downloads/eigen-3.2.10/unsupported/Eigen/Splines"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/algo/Downloads/eigen-3.2.10/build/unsupported/Eigen/src/cmake_install.cmake")

endif()

