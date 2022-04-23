#!/bin/bash
#Program:
# 用範本快速新增Script
#History:
# 2022/04/23
##+ New add Script
###+ 1 QaddScript為自訂函數~用touch建立新script
###+ 2 QaddMeta 為自訂函數~用echo新增script Meta
###+ 3 QaddNote 為自訂函數~用echo與參數變數QaddV來新增紀錄
###+ 4 QRec為  自訂矩陣變數,之後可需要增加
###+ 5 Qadmenu  為自訂函數~用echo與矩陣變數Qrec製作輸入選單
###+ 6 QadMIT 為自訂函數~依照Qadmenu所得變數顯示

QRec=(
"⚙️  New Script "
"📝 New Note "
"📻 Eles  ")

QaddV=$1
QaddScript(){
echo -n '§ 你建立scipt的名稱:'
read aScriptNam
touch $aScriptNam.sh
}	
QaddMeta(){
echo '#!/bin/bash' >> $aScriptNam.sh
echo '#Program:' >> $aScriptNam.sh
echo -n '§ 你建立scipt的目的:'
read aPro
echo -e '# '$aPro >> $aScriptNam.sh
echo '#History:' >> $aScriptNam.sh
echo -n '# ' >> $aScriptNam.sh
date +%Y/%m/%d >> $aScriptNam.sh
echo '##+ New add Script' >> $aScriptNam.sh
}


QaddNote(){
echo -n '# ' 
date +%Y/%m/%d 
echo -e '##+ '"$QaddV"
}

Qadmenu(){
Tlength=${#QRec[@]}
echo -e "\033[47;31m ##################類別######### \033[0m"
for ((i=0;i< $Tlength ;i++))
do
	echo -e "\033[47;31m #+ $i  ${QRec[$i]} \t\t# \033[0m"
done
echo -e "\033[47;31m ################################ \033[0m"
echo -n '§ 你输入的類別为:'
read -n 1 aNum
echo
echo $QaddV
}

QadMIT(){
echo -n "## "  
date '+%R' 
echo -n -e "### \t+ "  
echo -n ${QRec[$aNum]} 
}




Qadmenu
QadMIT
# QaddScript
# QaddMeta
# QaddNote
