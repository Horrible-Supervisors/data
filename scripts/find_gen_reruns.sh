#!/bin/bash


array_str="array="
for x in $(grep -L "Complete" logs/imagenet_subset/batch1/* | grep -E -o .[0-9]+.out | grep -E -o [0-9]+); do
    array_str="${array_str}${x},"
done

echo "${array_str}"

# array=1002,10142,10203,10253,10334,10351,1053,10612,10668,10761,11069,11506,11614,11856,11877,1195,12077,12344,1242,12448,12611,12690,12711,12981,1313,13142,13169,13548,14188,14243,14288,14352,14456,14633,14889,1511,15360,15435,15480,15676,15878,16241,16784,16872,16974,17449,17675,17734,17954,17991,1828,18427,18503,18553,18635,18699,18731,18893,19275,19402,19420,19509,19641,19956,2146,2665,303,3256,3341,3507,3538,3650,3747,3791,3796,3984,4065,4151,4326,4390,4597,4706,4748,4805,5113,5296,5401,553,5551,559,5668,5762,6036,6166,6270,6465,6534,6608,6713,7112,7312,7464,74,7585,7762,7939,8278,863,8679,8902,8949,8963,8977,897,9385,9464,9489,9937,9945