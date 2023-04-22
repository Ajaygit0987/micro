docker run \
 --name some-rabbit \
 --publish 15672:15672 \
 --publish 5672:5672 \
 --env RABBITMQ_DEFAULT_USER=user \
 --env RABBITMQ_DEFAULT_PASS=password \
 --detach \
 rabbitmq:3-management
#rabbitmq:latest
