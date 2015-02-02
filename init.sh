read -s -p "MySQL Nodify Password:" nodifypw
	#-v /var/lib/mysql \
docker run \
	--name mysql-data \
	-e MYSQL_USER="nodify-web" \
	-e MYSQL_PASS=$nodifypw \
	-e MYSQL_DATABASE="nodify" \
	-e STARTUP_SQL="/sql/node.sql /sql/zf-commons.sql /sql/scn-social-auth.sql" \
	shinymayhem/mysql bash '/init-db.sh'
	#/etc/init.d/mysql start && \
	#mysql -u nodify -p$nodifypw nodify < sql/zf-commons.sql && \
	#mysql -u nodify -p$nodifypw nodify < sql/scn-social-auth
