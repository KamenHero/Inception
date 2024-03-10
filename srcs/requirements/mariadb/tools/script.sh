#!bin/bash

# echo "im here"
service mariadb start
# sleep 2
mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB"
mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PW'"
mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DB.* TO '$MYSQL_USER'@'%'"
mysql -e "FLUSH PRIVILEGES"
# mysqladmin -u root -p$MYSQL_ROOTPW shutdown
service mariadb stop
# mariadb -u root -e "CREATE DATABASE $MYSQL_DB ; CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '123';"
# mariadb -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DB TO $MYSQL_USER IDENTIFIED BY '123';"
# mariadb -u root -e "FLUSH PRIVILEGES;"
# echo "im here 2"
# exec mysqld_safe
mariadbd