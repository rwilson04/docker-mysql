docker run -d \
	--name mysql \
	--volumes-from mysql-data \
	shinymayhem/mysql
