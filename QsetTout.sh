#!/bin/bash
#Program:
# 快速設定終端機登出時間
#History:
# 2022/04/27
##+ New add Script
##+ SelectfunE 為自訂函數~用case語法選擇要執行
SfunE(){
case $aNum in
    0)  
sed -i-e '1,$s/TMOUT=1800/#TMOUT=1800/g' $EdS 
# source /home/swde/.zshrc
    ;;
    1)  
sed -i-e '1,$s/#TMOUT=1800/TMOUT=1800/g'   $EdS 
# source /home/swde/.zshrc
    ;;
    *)  echo '你没有输入 0 到 2  之间的数字'
    ;;
esac
}

if [ -z $1  ]
then

    echo "終端機登出時間:"$TMOUT"0 min" 
    echo "$TMOUT" 
else
    echo '§ 0~關終端機登出時間\1~開終端機登出時間:900'
    echo -n '§ 你输入的類別为:' 
    read -n 1 aNum             
    echo
    EdS="$1"
    SfunE
    echo "終端機登出時間:"$TMOUT" min" 
fi






