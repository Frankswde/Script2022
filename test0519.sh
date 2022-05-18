#!/bin/bash
#Program:
# 比大小
#History:
# 2022/05/18
##+ New add Script
echo "please enter two number"
echo "This is number a:"
read -n 1 a
echo "This is number b:"
read -n 1 b
if test $a -eq $b
then echo "NO.a = NO.b"
elif test $a -gt $b
then echo "NO.a > NO.b"
else echo "NO.a < NO.b" 
fi
