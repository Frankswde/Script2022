#!/bin/bash
#Program:
# case語法
#History:
# 2022/05/22
##+ New add Script
clear
echo -n "enter a number from 1 to 5:"
read -n1 num
echo
case $num in
    1) echo "you enter 1"
    ;;
    2) echo "you enter 2"
    ;;
    3) echo "you enter 3"
    ;;
    4) echo "you enter 4"
    ;;
    5) echo "you enter 5"
    ;;
    *) echo "error"
    ;;
esac
