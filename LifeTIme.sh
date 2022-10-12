#!/bin/bash
#Program:
# 人生所剩下時間
#History:
## 2022/10/11 用shell script 計算如果活到80歲還剩下幾天
## 2022/10/12 用shell script 改為計算如果活到輸入年分歲還剩下幾天

## LinsBD=$((`date +%s -d '19840318'`/86400))
## LinsED=$((`date +%s -d '20640318'`/86400))
TD=$((`date +%s`/86400 ))
## 
echo -n "今天是"
date +"%Y/%m/%d %A"
echo

echo -n ' 你输入的出生年分为:'
read -n 4 IYmu
echo
echo -n ' 你输入的生日为:'
read -n 4 IBmu
echo
echo -n ' 你預計活到幾歲为:'
read -n  2 ILmu
echo
Dmu=$(($IYmu+$ILmu))
echo ' 按照你預計死亡年分为:'$Dmu
Cmu=$IYmu$IBmu
echo -n " 出生在$Cmu"
CBD=$((`date +%s -d "$IYmu$IBmu"`/86400))
echo -n  "已經過去"
echo -n  $(($TD- $CBD))
echo "天"
echo -n " 如果活到$Dmu歲,一共有"
Emu=$Dmu$IBmu
CED=$((`date +%s -d "$Emu"`/86400))
echo -n  $(($CED- $CBD))
echo -n "天,還剩下"
echo -n  $(($CED - $TD ))
echo "天"
