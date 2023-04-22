docker run \
 --name partners \
 --publish 50018:50018 \
 --network my-network \
 --volume /var/log/partners:/root/docker/promos/log/partners-exec.log \
 -e spring.rabbitmq.host=10.32.0.9 \
 -e spring.rabbitmq.username=user \
 -e spring.rabbitmq.password=password \
 -e spring.datasource.url="jdbc:mysql://database-2.c3ug7s2xpkm5.ap-south-1.rds.amazonaws.com:3306/partners" \
 -e spring.datasource.username="admin" \
 -e spring.datasource.password="password" \
 --detach \
 test:latest
