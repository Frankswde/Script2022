#!/bin/bash
#Program:
# 將同月份的script移動到同一資料夾
#History:
# 2022/04/28
##+ New add Script
NewDR="DScript"`date +%m`
mkdir -p  $NewDR
mv test`date +%m`*.sh $NewDR
# git add $NewDR
# git add $NewDR/*
# git commit -m "Dir_UPdate"
