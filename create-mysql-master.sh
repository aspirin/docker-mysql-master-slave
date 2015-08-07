docker run --name mysql-master \
        --volumes-from data-master \
        -p 3706:3306 \
        -e MYSQL_ROOT_PASSWORD=root \
        -e MYSQL_USER=scm \
        -e MYSQL_PASSWORD=scm \
        -e MYSQL_DATABASE=fuerscm \
	-v /opt/docker/etc/mysql-master/conf.d:/etc/mysql/conf.d \
        -d mysql:5.6
