#FROM mysql:5.7
FROM tutum/mysql

ADD conf/init-db.sh /init-db.sh
ADD conf/my.cnf /etc/mysql/conf.d/my.cnf
ADD sql/* /sql/

#VOLUME /var/lib/mysql #set in tutum's dockerfile
