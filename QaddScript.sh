#!/bin/bash
#Program:
# 用範本快速新增Script
#History:
# 2022/04/23
##+ New add Script
###+ QaddScript為自訂函數~用touch建立新script
###+ QaddMeta 為自訂函數~用echo新增script Meta
###+ QaddNote 為自訂函數~用echo與參數變數來新增紀錄→  參數變數無法帶入?

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

# QaddScript
# QaddMeta
QaddNote
