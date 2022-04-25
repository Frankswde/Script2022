#!/bin/bash
#Program:
# 練習書中範例
#History:
# 2022/04/25
##+ New add Script
### 用指令與``來獲取要監控的本地服務器IP地址
NIP=`ip addr | grep inet | grep -vE 'inet6|127.0.0.1' | awk '{print $2}'`
echo "IP地址："$NIP
