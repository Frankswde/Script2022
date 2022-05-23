#!/bin/bash
#Program:
# 檢查目錄是否淨空
#History:
# 2022/05/23
##+ New add Script
DIR="/mnt/target"
 
if [ "$(ls -A $DIR)" ]; then
   echo "$DIR is not empty!"
else
   echo "$DIR is empty!"
fi
