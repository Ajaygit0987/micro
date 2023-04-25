docker run \
 --name auth \
 --publish 50002:50002 \
 --publish 50000:50000 \
 -e spring.rabbitmq.url=10.32.0.9 \
 -e spring.rabbitmq.username=user \
 -e spring.rabbitmq.password=password \
 -e spring.datasource.url="jdbc:mysql://database-2.c3ug7s2xpkm5.ap-south-1.rds.amazonaws.com:3306/auth" \
 -e spring.datasource.username="admin" \
 -e spring.datasource.password="password" \
 --detach \
 auth:latest
