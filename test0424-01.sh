#!/bin/bash
#Program:
# 練習參考書範例
#History:
# 2022/04/24
##+ New add Script
### Shell Script 的 if / else 條件判斷式會用 test 或者中括號 “[ ]” 表達
### -n $str 當 $str1 不是 null, 回傳 true.
### -z $str 當 $str1 是 null, 回傳 true
if [ -z $1  ]
then
    echo "var is Null"
else
    echo "var is "$1
fi
