#! bin/bash
# sleep infinity
sleep 10
cd /var/www/html/wordpress
wp core download --allow-root
# mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
# rm /var/www/html/wordpress/wp-config.php
wp core config --dbname=${MYSQL_DB} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PW} --dbhost=mariadb --allow-root
wp core install --allow-root --url=${DOMAIN_NAME} --title=Inception --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=${WP_EMAIL} 
wp user create --allow-root $WP_USER_NAME $WP_USER_EMAIL --role=editor --user_pass="$WP_USER_PASSWORD"
chown -R www-data:www-data /var/www/html/wordpress
sed -i 's#listen = /run/php/php7.4-fpm.sock#listen = 0.0.0.0:9000#g' /etc/php/7.4/fpm/pool.d/www.conf
sed -i 's#chdir = /var/www#chdir = /var/www/html/wordpress#g' /etc/php/7.4/fpm/pool.d/www.conf
php-fpm7.4 -F