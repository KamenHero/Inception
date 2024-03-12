FROM debian:bullseye

RUN apt-get update

RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh .

# ENV MYSQL_DB=oryadidb 
# ENV MYSQL_USER=oryadi
# ENV MYSQL_PW=123 
# ENV MYSQL_ROOTPW=root123 
RUN chmod +x script.sh

# RUN ./script.sh

CMD ["./script.sh"]