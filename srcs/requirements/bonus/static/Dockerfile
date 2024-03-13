FROM debian:bullseye

RUN apt-get update

RUN apt-get install nginx -y

COPY ./website /website

COPY  ./conf /etc/nginx/sites-enabled

CMD ["nginx", "-g", "daemon off;"] 
