#!/bin/bash
#Program:
# 刪除檔案空白行
#History:
# 2022/05/25
##+ New add Script
input="/tmp/*.txt"
for i in input
do
  sed -i '/^$/d' $i
done
