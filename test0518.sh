#!/bin/bash
#Program:
# 練習輸入
#History:
# 2022/05/18
##+ New add Script
echo -n "login:" 
read name
echo -n "password:"
read passwd
if [ $name = "demo" -a $passwd = "demo111" ];then
echo "the host and password is right!"
else echo "input is error!"
fi
