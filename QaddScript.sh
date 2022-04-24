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
###+ 7 SelectfunE 為自訂函數~用case語法選擇要執行
# 2022/02/04
##+ Update Script
###+ 1 QaddNote2Read為自訂函數~用greap 指令將建立目的新增到ReadMe


QaddV=$1
QRec=(
"⚙️  New Script "
"📝 New Note "
"📻 Eles  ")

QaddScript(){
echo -n '§ scipt的名稱:'
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

QaddNote2Read(){
echo  >> ReadME.md
echo -n '# ' >> ReadME.md
ls $aScriptNam.sh >> ReadME.md
echo '+Program:' $aPro >> ReadME.md
}	

QaddNote(){
echo -n "## "   >> $aScriptNam.sh
date +%Y/%m/%d >> $aScriptNam.sh
echo -e '##+ '"$QaddV"
}

QadMIT(){
echo -n "## "  >> $aScriptNam.sh
date +%Y/%m/%d >> $aScriptNam.sh
echo -n -e "###\t+\t"  >> $aScriptNam.sh
echo -n ${QRec[$aNum]} >> $aScriptNam.sh
echo -e "$QaddV" >> $aScriptNam.sh
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


SelectfunE(){
case $aNum in
    0)  
		echo -n  '選擇 '0'~' 
		echo ${QRec[0]}
		QaddMeta
		QaddNote2Read
		echo
    ;;
    1)  
		echo -n  '選擇 '1'~' 
		echo ${QRec[1]}
		QadMIT
		echo
    ;;
    2)  
		echo -n  '選擇 '$aNum'~' 
		echo ${QRec[$aNum]}
		# QadMIT
		echo 'test'
    ;;
    *)  echo '你没有输入 0 到 2  之间的数字'
    ;;
esac
}


QaddScript
Qadmenu
SelectfunE
# QaddMeta




