FROM debian:bullseye

RUN apt-get update

RUN apt-get install nginx -y

RUN apt-get install openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN  openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=Marrakesh-Safi/L=benguerir/O=1337/OU=1337/CN=oryadi.42.fr/UID=oryadi"

COPY  ./conf /etc/nginx/sites-enabled


CMD ["nginx", "-g", "daemon off;"] 
# CMD ["bash"]

