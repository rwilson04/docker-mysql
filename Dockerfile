#FROM mysql:5.7
FROM tutum/mysql

ADD conf/init-db.sh /init-db.sh
ADD conf/my.cnf /etc/mysql/conf.d/my.cnf
ADD sql/* /sql/

ENV MYSQL_USER nodify-web
ENV MYSQL_DATABASE nodify
ENV STARTUP_SQL /sql/node.sql /sql/zf-commons.sql /sql/scn-social-auth.sql

#VOLUME /var/lib/mysql #set in tutum's dockerfile
