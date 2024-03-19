#!bin/bash

adduser $FTP_CUSER --disabled-password --gecos ""

echo "$FTP_CUSER:$FTP_CPSWD" | chpasswd

echo $FTP_CUSER >> /etc/vsftpd.userlist

chown $FTP_CUSER:$FTP_CUSER /wordpress

vsftpd /vsftpd.conf