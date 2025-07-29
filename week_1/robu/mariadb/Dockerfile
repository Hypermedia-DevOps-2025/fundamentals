FROM mariadb:10.11

# Copy custom config file
COPY custom.cnf /etc/mysql/conf.d/

# Copy initialization SQL scripts
COPY init/ /docker-entrypoint-initdb.d/

