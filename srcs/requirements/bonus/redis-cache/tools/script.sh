#! bin/bash

sed -i 's/bind 127.0.0.1/#bind 127.0.0.1/g' /etc/redis/redis.conf

redis-server --protected-mode no
