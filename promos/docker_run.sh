docker run \
 --name promos \
 --publish 50060:50060 \
 --volume /var/log/promos:/root/docker/promos/log/promos-exec.log \
 -e netz-service.cache.hosts=10.32.0.9 \
 -e netz-service.cache.password=YXxNONejhNmLqw\
 -e netz-service.cache.provider=hazelcast \
 -e netz-service.cache.username=adl-dev \
 -e promos.cache.hosts=10.32.0.9 \
 -e promos.cache.password=YXxNONejhNmLqw\
 -e promos.cache.provider=hazelcast \
 -e promos.cache.username=adl-dev \
 -e server.port=50060 \
 -e spring.boot.adl-dev.client.disabled=true \
 -e spring.rabbitmq.host=10.32.0.9 \
 -e spring.rabbitmq.username=user \
 -e spring.rabbitmq.password=password \
 -e spring.datasource.url="jdbc:mysql://database-2.c3ug7s2xpkm5.ap-south-1.rds.amazonaws.com:3306/promos" \
 -e spring.datasource.username="admin" \
 -e spring.datasource.password="password" \
 --detach \
 promos:latest
