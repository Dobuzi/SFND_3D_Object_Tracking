# SFND 3D Object Tracking

## Result

### FP5 : Find the bad examples from lidar point cloud to calculate TTC.
* Good Case
  <img src="images/FP5/good.png">
  There are low variance and no outliers on point cloud.

* Bad Case
  * High Variance
    <img src="images/FP5/bad_highVariance.png">
    There is high variance on point cloud. It can make an error on filtering process.

  * Outlier
    <img src="images/FP5/bad_outlierMaxX.png">
    There is an outlier on max X position. It's not a big deal.

    <img src="images/FP5/bad_outlierMinX.png">
    There is an outlier on min X position. It can make an error on calculating TTC with lidar data. So I applied filter to be robust on this case. My code ignores the point which far from median of point cloud. 

## Pipe Line

<img src="images/course_code_structure.png" width="779" height="414" />

## Dependencies
* OS : Ubuntu 16.04
* cmake >= 2.8
* make >= 4.1
* Git LFS
* OpenCV >= 4.1
  * This must be compiled from source using the `-D OPENCV_ENABLE_NONFREE=ON` cmake flag for testing the SIFT and SURF detectors.
* gcc/g++ >= 5.4

* or Make docker container by below command with [my docker image](https://hub.docker.com/repository/docker/kimjw7981/sfnd)
  * `docker run -p 6080:80 -v /dev/shm:/dev/shm kimjw7981/sfnd`

## Basic Build Instructions

1. Clone this repo.
2. Make a build directory in the top level project directory: `mkdir build && cd build`
3. Compile: `cmake .. && make`
4. Run it: `./3D_object_tracking`.
