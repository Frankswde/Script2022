#!/bin/bash
#Program:
# 快速產生紀錄Note
#History:
# 2022/03/20 建立script, 目標快速產生紀錄Note
## + 練習data指令&echo指令  
## + 自定義函數 QQ0320，將預計執行的指令包含進去
# 2022/03/21 
## + 用case語法結合矩陣來作條件輸入
## + 將昨日自訂的QQ0320函數 加入case語法
## + 修改語法
# 2022/03/29
## + 讓read 指令只接受1個字元輸入
## + 更新顯示菜單

# 自訂矩陣變數Rec,可需要增加@ 03/21

Rec=(
"⚙️  Config "
"🎶 音樂記錄 "
"🎥 視聽紀錄 "
"📝 備忘紀錄 "
"📓 小說紀錄 "
"🎮 HGAME紀錄 "
"📺 Youtube "
"📰 網路文章 "
"📻 Podcast ")
## 測試矩陣長度測量
# echo $Tlength
## menu
Smenu(){
Tlength=${#Rec[@]}
echo -e "\033[47;31m ########输入時間段&類別######### \033[0m"
for ((i=0;i< $Tlength ;i++))
do
	echo -e "\033[47;31m #+ $i  ${Rec[$i]} \t\t# \033[0m"   
#  echo -e -n "\t + $i "
#  echo ${Rec[$i]}
done
echo -e "\033[47;31m ################################ \033[0m"
echo -n '§ 你输入的類別为:'
read -n 1 aNum
echo
echo -n '§ 你输入的時間段(min)为:'
read -n 2 aTSNum
echo 
}	
# 無論`date +%Y%m%d`.md是否存在,用touch更改檔案時間戳記


touch  `date +%Y%m%d`.md

# QQ0320為自訂函數
QQ0320(){
echo -n "+ " >>  `date +%Y%m%d`.md 
date '+%R' >>  `date +%Y%m%d`.md
echo -n -e "\t+ " >>  `date +%Y%m%d`.md 
# echo -n '📓 小說' >>  `date +%Y%m%d`.md
echo -n  ${Rec[$aNum]} >>  `date +%Y%m%d`.md
echo -n -e " \t " >>  `date +%Y%m%d`.md 
date '+%R'|tr -d '\n' >>  `date +%Y%m%d`.md
echo -n '~' >>  `date +%Y%m%d`.md
# date '+%R' -d '15 min' >>  `date +%Y%m%d`.md
date '+%R' -d $aTSNum'min' >>  `date +%Y%m%d`.md
## echo -e '\t\t+ ' >>  `date +%Y%m%d`.md
}
# Old Menu
## -----
# read 輸入時間段
# case/esac 選擇輸入
# echo -e '\t0-⚙️  Config\n\t1-📝 備忘紀錄\n\t2-📓 小說\n\t3-📺 Youtube\n\t4-📰 網路文章\n\t5-📻 Podcast'
# echo -n '§ 你输入的類別为:'
# read aNum
## ----- 
Smenu
case $aNum in
    0|1|2|3|4|5|6|7|8)  
		echo -n  '你选择了 '$aNum'~' 
		echo ${Rec[$aNum]}
		QQ0320
		echo
    ;;
    *)  echo '你没有输入 0 到 8 之间的数字'
    ;;
esac
