FROM debian:bullseye

RUN apt-get update && apt-get install wget -y

RUN wget https://github.com/google/cadvisor/releases/download/v0.49.1/cadvisor-v0.49.1-linux-amd64

RUN mv cadvisor-v0.49.1-linux-amd64 cadvisor

RUN chmod +x cadvisor

CMD [ "./cadvisor" ,"-port=8090" ]

