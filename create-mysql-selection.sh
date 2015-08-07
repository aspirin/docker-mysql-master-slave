docker run --name mysql-selection-master \
        --volumes-from data-selection-master \
        -p 4706:3306 \
        -e MYSQL_ROOT_PASSWORD=root \
        -e MYSQL_USER=scm \
        -e MYSQL_PASSWORD=scm \
        -e MYSQL_DATABASE=fuerscm \
	-v /opt/docker/etc/mysql-selection-master/conf.d:/etc/mysql/conf.d \
        -d mysql:5.6
