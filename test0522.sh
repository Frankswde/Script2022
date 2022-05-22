#!/bin/bash
#Program:
# 讀取目錄內容
#History:
# 2022/05/22
##+ New add Script
DIR='/mn/target'
for FILE in "$DIR"/*
do
    echo $FILE
done
