docker run \
 --name mysql-container \
 --env MYSQL_ROOT_PASSWORD=mysecretpassword \
 --env MYSQL_DATABASE=mysql \
 --env MYSQL_USER="myuser" \
 --env MYSQL_PASSWORD="mypassword" \
 --env MYSQL_HOST="0.0.0.0" \
 --env MYSQL_ROOT_HOST="0.0.0.0" \
 --detach \
mysql:latest
