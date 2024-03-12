#!bin/bash

service mariadb start

mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB"

mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PW'"

mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DB.* TO '$MYSQL_USER'@'%'"

mysql -e "FLUSH PRIVILEGES"

service mariadb stop

mariadbd