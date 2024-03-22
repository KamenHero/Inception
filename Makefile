all:
	docker compose -f srcs/docker-compose.yml up --build -d

remove:
	docker compose -f srcs/docker-compose.yml down
	docker rmi wordpress nginx mariadb redis-cache static_website ftp_server adminer cadviser

.PHONY:all remove