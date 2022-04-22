#!/bin/bash
#Program: 快速重新命名檔案
Till=GOW2018
aa=0
for i in `cat $1`
do  
	((aa++))	
	# echo $i
	mv $i $Till-$aa.mp3
done
