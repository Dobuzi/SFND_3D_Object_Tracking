#!/bin/bash

echo "BRISK_BRISK_MAT_BF" > FP6_BRISK_BRISK_MAT_BF.csv
../build/3D_object_tracking --bVisFinal false \
--detector BRISK \
--descriptor BRISK \
--matcher MAT_BF \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_BRISK_BRISK_MAT_BF.csv

echo "SIFT_SIFT_MAT_FLANN" > FP6_SIFT_SIFT_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector SIFT \
--descriptor SIFT \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_SIFT_SIFT_MAT_FLANN.csv

echo "BRISK_BRIEF_MAT_FLANN" > FP6_BRISK_BRIEF_MAT_FLANN.csv
../build/3D_object_tracking --bVisFinal false \
--detector BRISK \
--descriptor BRIEF \
--matcher MAT_FLANN \
--selector SEL_KNN \
| grep FP6 | awk '{print $2}' >> FP6_BRISK_BRIEF_MAT_FLANN.csv

./mergecsv.pl FP6_*.csv > result_FP6.csv
rm FP6_*.csv