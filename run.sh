#docker run -it --rm -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PW mysql
docker run -it --rm \
	--link mysql:mysql \
	--volumes-from mysql-data \
	shinymayhem/mysql /bin/bash #sh -c '\ ls -lah /var/lib/mysql'
	#--volumes-from mysql-data \
