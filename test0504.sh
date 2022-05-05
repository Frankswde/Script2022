#!/bin/bash
#Program:
# 練習九九乘法~多重迴圈
#History:
# 2022/05/05
##+ New add Script

for i in `seq 9`
do
    for j in `seq 9`
        do
        echo "$j X $i = `echo $(($i*$j))`"
    done

done
