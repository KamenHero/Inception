all:
	docker compose up --build -d

mariadb: 
	docker container rm -f mariadbd
	docker rmi -f mariadb
	docker build -t mariadb ./srcs/requirements/mariadb
	docker run -d --name mariadbd mariadb

rmariadb:
	docker container rm -f srcs-mariadb
	docker rmi -f srcs-mariadb

nginx: 
	docker container rm -f nginxx
	docker rmi -f nginx
	docker build -t nginx ./srcs/requirements/nginx
	docker run -d --name nginxx -p 443:443 nginx

rmnginx:
	docker container rm -f srcs-nginx
	docker rmi -f srcs-nginx

rmwordpress:
	docker container rm -f srcs-wordpress
	docker rmi -f srcs-wordpress

rmall:
	rmariadb
	rmnginx
	rmwordpress

.PHONY:all mariadb rmariadb ngnix rmnginx rmwordpress rmall remove