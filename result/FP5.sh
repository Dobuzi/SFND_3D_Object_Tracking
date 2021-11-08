#!/bin/bash

echo "FP5_LIDAR_TTC" > FP5_LIDAR_TTC.csv
../build/3D_object_tracking --bVisFinal false \
--detector SIFT \
--descriptor SIFT \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP5 | awk '{print $2}' >> FP5_LIDAR_TTC.csv