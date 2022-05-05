#!/bin/bash
#Program:
# 練習亂數
#History:
# 2022/05/06
##+ New add Script
## random +迴圈10次產生電話號碼並儲存到檔案
for i in {1..10}
do
    n1=$[RANDOM%10]
    n2=$[RANDOM%10]
    n3=$[RANDOM%10]
    n4=$[RANDOM%10]
    n5=$[RANDOM%10]
    n6=$[RANDOM%10]
    n7=$[RANDOM%10]
    n8=$[RANDOM%10]
    echo -e "139 $n1$n2$n3$n4$n5$n6$n7$n8"
    # echo "139$n1$n2$n3$n4$n5$n6$n7$n8" >> phonenum.txt
done
