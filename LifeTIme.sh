#!/bin/bash
#Program:
# 人生所剩下時間
#History:
## 2022/10/11 用shell script 計算如果活到80歲還剩下幾天
## 2022/10/12 用shell script 計算如果活到80歲還剩下幾天

LinsBD=$((`date +%s -d '19840318'`/86400))
LinsED=$((`date +%s -d '20640318'`/86400))
TD=$((`date +%s`/86400 ))

echo -n "今天是"
date +"%Y/%m/%d %A"
echo
echo -n "出生在19840318,"
echo -n  "已經過去"
echo -n  $(($TD- $LinsBD))
echo "天"
echo -n "如果活到80歲,一共有"
echo -n  $(($LinsED- $LinsBD))
echo "天"
echo -n "還剩下"
echo -n  $(($LinsED - $TD ))
echo "天"
