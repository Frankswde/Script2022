#!/bin/bash
#Program:
# 測試網路連線
#History:
# 2022/04/26
##+ New add Script
if ping -q -c 1 -W 1 google.com > /dev/null; then
  echo "Network is up"
else
  echo "Network is down"
fi
