HOSTNAME=`hostname`
WEEKS=`date +%w`
mkdir -p /BACKUP/$WEEKS

#----START BACKUP LOG
echo `date +%y%m%d-%H%M`-"START" >> /BACKUP/$WEEKS/backup.log

#----FOR ROOT's BIN DIR
crontab -l -u root > /root/bin/crontab.root
crontab -l -u airlink > /root/bin/crontab.airlink
cd /root
tar zcvf /BACKUP/$WEEKS/bin.tgz bin

#----FOR ETC DIR
cd /
tar zcvf /BACKUP/$WEEKS/etc.tgz etc

#----FOR HOME DIR
cd /
tar zcvf /BACKUP/$WEEKS/home.tgz --exclude='*.log' --exclude='*.tgz' home

#----FOR WWW
#cd /var/www
#tar zcvf /BACKUP/$WEEKS/html.tgz --exclude='*.tgz' html

#----FOR DB
cd /var/lib
systemctl stop mariadb
tar zcvf /BACKUP/$WEEKS/mysql.tgz --exclude='server_audit.log*' mysql
systemctl start mariadb

#----END BACKUP LOG
echo `date +%y%m%d-%H%M`-"END" >> /BACKUP/$WEEKS/backup.log
touch /BACKUP/$WEEKS

#----FOR UPLOAD BACKUP

#rm -rf /BACKUP/*/*.tgz
