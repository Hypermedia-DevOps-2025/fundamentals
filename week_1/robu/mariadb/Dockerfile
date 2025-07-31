FROM mariadb:10.11

COPY custom.cnf /etc/mysql/conf.d/
COPY init/ /docker-entrypoint-initdb.d/
RUN chmod -R 755 /docker-entrypoint-initdb.d
