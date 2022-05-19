#!/bin/bash
#Program:
# case語法
#History:
# 2022/05/19
##+ New add Script
clear
echo "enter [y/n]:"
read a
case $a in
    y|Y|Yes|YES) echo "you enter $a"
    ;;
    n|N|NO|no) echo "you enter $a"
    ;;
    *) echo "error"
    ;;
esac
