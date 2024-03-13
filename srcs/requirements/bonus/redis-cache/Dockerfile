FROM debian:bullseye

RUN apt-get update

RUN apt-get install redis -y

COPY ./tools/script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]
