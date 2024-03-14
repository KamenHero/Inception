FROM debian:bullseye

RUN apt-get update && apt-get install curl php php-fpm php-mysql -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /

RUN mkdir -p /run/php
RUN mkdir -p /var/www/html/wordpress
RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]