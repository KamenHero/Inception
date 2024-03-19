FROM debian:bullseye

RUN apt-get update

RUN apt install vsftpd -y

COPY ./tools/script.sh /

COPY ./conf/ftp.conf /vsftpd.conf

RUN chmod +x script.sh

RUN mkdir -p  /var/run/vsftpd && mkdir -p /var/run/vsftpd/empty

CMD ["./script.sh"]
