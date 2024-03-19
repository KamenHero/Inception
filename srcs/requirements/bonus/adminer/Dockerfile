FROM debian:bullseye

RUN apt-get update && apt-get install wget php -y php-mysqli default-mysql-client php-mysql

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/html/adminer.php

WORKDIR /var/www/html

RUN chown www-data:www-data adminer.php

RUN chmod +x adminer.php

CMD [ "php", "-S", "0.0.0.0:8080" ]