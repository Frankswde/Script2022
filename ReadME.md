# Lins Script@2022
## QsNote.sh
+ Program: 快速產生紀錄Note
+ 2022/03/20 建立script, 目標快速產生紀錄Note
	+ 練習data指令&echo指令  
	+ 自定義函數 QQ0320，將預計執行的指令包含進去
+ 2022/03/21 
	+ 用case語法結合矩陣來作條件輸入
	+ 將昨日自訂的QQ0320函數 加入case語法
	+ 修改語法
+ 2022/03/29
	+ 讓read 指令只接受1個字元輸入
	+ 更新顯示菜單

## AddIten.sh  
+ Program: 快速加入ittm 到今日Note

## RenameList.sh
+ Program: 快速重新命名檔案
## ScissorsMp3.sh
+ Program: 快速分割MP3
## QaddScript.sh @2022/04/23
+ Program: 用範本快速新增Script
## QadGIT.sh @2022/04/23
+ Program:快速將修改上傳到Github

## test0424-01.sh
+ Program: 練習參考書範例
	+ 運算子包括：
```
-d file file 是目錄回傳 true.
-f file file 是檔案回傳 true.
-r file file 可讀回傳 true.
-s file file 的體積大於 0 (不是空檔案) 回傳 true.
-w file file 可寫入回傳 true.
-x file file 可執行回傳 true.

$str1 = str2 判斷 $str1 與 $str2 字串是否相同。
$str1 != $str2 判斷 $str1 與 $str2 字串是否不相同。
-n $str 當 $str1 不是 null, 回傳 true.
-z $str 當 $str1 是 null, 回傳 true.

var1 -eq var2 var1 等於 var2 回傳 true.
var1 -ne var2 var1 不等於 var2 回傳 true.
var1 -gt var2 var1 大過 var2 回傳 true.
var1 -ge var2 var1 大過或等如 var2 回傳 true.
var1 -lt var2 var1 小過 var2 回傳 true.
var1 -le var2 var1 小過或等如 var2 回傳 true.
```



## test0425-01.sh
+ Program: 用指令與``來獲取要監控的本地服務器IP地址

## test0426-01.sh
+ Program: 測試網路連線

## QsetTout.sh
+ Program: 快速設定終端機登出時間

## test0428-01.sh
+ Program: 將同月份的script移動到同一資料夾
[?1049h[22;0;0t[>4;2m[?1h=[?2004h[1;11r[?12h[?12l[22;2t[22;1t[27m[23m[29m[m[H[2J[?25l[11;1H"test0428-01.sh" 6L, 112C[1;1H[34m#!/bin/bash
#Program:
# 將同月份的script移動到同一資料夾
#History:
# 2022/04/28
##+ New add Script[m
[94m~                                                                               [8;1H~                                                                               [9;1H~                                                                               [10;1H~                                                                               [m[11;63H1,1[10C全部[1;1H[?25h[?25l[11;1HType  :qa  and press <Enter> to exit Vim[11;63H[K[11;63H1,1[10C全部[1;1H[?25h[?25l[11;63H2[2;1H[?25h[?25l[11;1H[K[11;1H:[?2004h[?25h[34m^Z^Z[?25l[m[97m[41mE492: 不是編輯器的命令: ^Z^Z[m[34C2,1[10C全部[2;1H[?25h[?25l[11;63H3[3;1H[?25h[?25l[11;63H4[4;1H[?25h[11;1H[?2004l[?1l>[>4;m[?1049l[23;0;0tVim: Caught deadly signal HUP
Vim: Finished.
[11;1H[23;2t[23;1t