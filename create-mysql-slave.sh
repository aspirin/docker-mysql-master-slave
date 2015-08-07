docker run --name mysql-slave --link mysql-master:mysql-master \
        --volumes-from data-slave \
        -p 3806:3306 \
        -e MYSQL_ROOT_PASSWORD=root \
        -e MYSQL_USER=scm \
        -e MYSQL_PASSWORD=scm \
        -e MYSQL_DATABASE=fuerscm \
	-v /opt/docker/etc/mysql-slave/conf.d:/etc/mysql/conf.d \
        -d mysql:5.6
