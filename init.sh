read -s -p "MySQL Nodify Password:" nodifypw
	#-v /var/lib/mysql \
docker run \
	--name mysql-data \
	-e MYSQL_PASS=$nodifypw \
	shinymayhem/mysql bash '/init-db.sh'
	#/etc/init.d/mysql start && \
	#mysql -u nodify -p$nodifypw nodify < sql/zf-commons.sql && \
	#mysql -u nodify -p$nodifypw nodify < sql/scn-social-auth
