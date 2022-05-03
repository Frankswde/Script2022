#!/bin/bash
#Program:
# 練習迴圈
#History:
# 2022/05/03
##+ New add Script
# while 迴圈 :

COUNTER=0
while [ $COUNTER -lt 10 ]; do
echo The counter is $COUNTER
let COUNTER=COUNTER+1
done
