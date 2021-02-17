# Install script for directory: /home/algo/Downloads/eigen-3.2.10/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Array"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Cholesky"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/CholmodSupport"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Core"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Dense"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Eigen"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Eigen2Support"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Eigenvalues"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Geometry"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Householder"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/IterativeLinearSolvers"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Jacobi"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/LU"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/LeastSquares"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/MetisSupport"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/OrderingMethods"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/PaStiXSupport"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/PardisoSupport"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/QR"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/QtAlignedMalloc"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/SPQRSupport"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/SVD"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/Sparse"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/SparseCholesky"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/SparseCore"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/SparseLU"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/SparseQR"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/StdDeque"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/StdList"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/StdVector"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/SuperLUSupport"
    "/home/algo/Downloads/eigen-3.2.10/Eigen/UmfPackSupport"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/algo/Downloads/eigen-3.2.10/build/Eigen/src/cmake_install.cmake")

endif()

