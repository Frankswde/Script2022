#!/bin/bash
#Program:
# 練習參考書script
#History:
# 2022/05/02
##+ New add Script
## until 迴圈寫法
echo -n '§ 输入的倒數次數为:'
read -n 1 aNum
COUNTER=20

until [ $COUNTER -lt $aNum ]; do
echo COUNTER $COUNTER
let COUNTER-=1
done
