LOGPATH=/var/log/ntpdate
TIMESERVER=192.168.0.5
TODAY=`date +%y%m%d`
/bin/mkdir -p $LOGPATH >/dev/null 2>/dev/null
/usr/sbin/ntpdate $TIMESERVER >> $LOGPATH/$TODAY.log
/bin/logger -f $LOGPATH/$TODAY.log
