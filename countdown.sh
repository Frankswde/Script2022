#!/bin/bash
#Program:
# 倒數計時器
#History:
## 2022/10/12 1.用read 輸入分數倒數計時的分鐘數
##            2.用while 迴圈來作倒數計時的迴圈
##            3.用if 判斷式來作分鐘與秒的位數調整
##            4.用if 判斷式來作倒數一分鐘的區別
##            5.用echo 來作倒數一分鐘的區別 一分鐘前為藍底白字一分鐘後為紅底白字

echo -n "請輸入倒數分鐘為多少min?" 
read -n 2 CoN
CDT=$(($CoN*60)) 
echo
# echo $CDT"sec"
while test $CDT -gt 0 
do
CDM=$(($CDT/60))
CDS=$(($CDT%60))
if [ $CDM -eq 0 ] 
then
CDM="00"
elif [ $CDM -lt 10 ] 
then 
CDM="0"$CDM
else
CDM=$CDM
fi

if [ $CDS -eq 0 ] 
then
CDS="00"
elif [ $CDS -lt 10 ] 
then 
CDS="0"$CDS
else
CDS=$CDS
fi

if [ $CDT -le 60 ]  
then
echo -ne "\033[41;37m\r$CDM:$CDS\033[0m"
else
echo -ne "\033[44;37m\r$CDM:$CDS\033[0m"
fi
sleep 1 
CDT=$(($CDT-1))
done
