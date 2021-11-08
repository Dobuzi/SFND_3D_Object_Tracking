#!/bin/bash

echo "SHITOMASI_BRISK_MAT_BF" > FP6_SHITOMASI_BRISK_MAT_BF.csv
../build/3D_object_tracking --bVisFinal false \
--detector SHITOMASI \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_SHITOMASI_BRISK_MAT_BF.csv

echo "SHITOMASI_BRIEF_MAT_BF" > FP6_SHITOMASI_BRIEF_MAT_BF.csv
../build/3D_object_tracking --bVisFinal false \
--detector SHITOMASI \
--descriptor BRIEF \
--matcher MAT_BF \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_SHITOMASI_BRIEF_MAT_BF.csv

echo "FAST_BRISK_MAT_BF" > FP6_FAST_BRISK_MAT_BF.csv
../build/3D_object_tracking --bVisFinal false \
--detector FAST \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_FAST_BRISK_MAT_BF.csv

echo "FAST_FREAK_MAT_BF" > FP6_FAST_FREAK_MAT_BF.csv
../build/3D_object_tracking --bVisFinal false \
--detector FAST \
--descriptor FREAK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_FAST_FREAK_MAT_BF.csv

echo "BRISK_BRISK_MAT_BF" > FP6_BRISK_BRISK_MAT_BF.csv
../build/3D_object_tracking --bVisFinal false \
--detector BRISK \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_BRISK_BRISK_MAT_BF.csv

echo "BRISK_BRISK_MAT_FLANN" > FP6_BRISK_BRISK_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector BRISK \
--descriptor BRISK \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_BRISK_BRISK_MAT_FLANN.csv

echo "BRISK_BRIEF_MAT_FLANN" > FP6_BRISK_BRIEF_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector BRISK \
--descriptor BRIEF \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_BRISK_BRIEF_MAT_FLANN.csv

echo "ORB_FREAK_MAT_FLANN" > FP6_ORB_FREAK_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector ORB \
--descriptor FREAK \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_ORB_FREAK_MAT_FLANN.csv

echo "ORB_ORB_MAT_BF" > FP6_ORB_BRISK_MAT_BF.csv
../build/3D_object_tracking --bVisFinal false \
--detector ORB \
--descriptor ORB \
--matcher MAT_BF \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_ORB_BRISK_MAT_BF.csv

echo "ORB_ORB_MAT_FLANN" > FP6_ORB_BRISK_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector ORB \
--descriptor ORB \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_ORB_BRISK_MAT_FLANN.csv

echo "AKAZE_AKAZE_MAT_FLANN" > FP6_AKAZE_AKAZE_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector AKAZE \
--descriptor AKAZE \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_AKAZE_AKAZE_MAT_FLANN.csv

echo "SIFT_SIFT_MAT_FLANN" > FP6_SIFT_SIFT_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector SIFT \
--descriptor SIFT \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_SIFT_SIFT_MAT_FLANN.csv

./mergecsv.pl FP6_*.csv > result_FP6.csv
rm FP6_*.csv