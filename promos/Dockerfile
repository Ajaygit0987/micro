FROM openjdk:8u322-slim-buster

# Expose required port and define log dir
EXPOSE 50060
VOLUME /var/log/promos

# create a new user and group (to not run docker as a root user)
ENV USER app-promos
RUN groupadd -g 999 $USER && useradd -r -u 999 -g $USER $USER



# Create required path and add jar files
RUN mkdir -p /srv/www/promos/current
WORKDIR /srv/www/promos/current
COPY ./promos-*.jar /srv/www/promos/current/
RUN mv promos-*.jar promos-exec.jar

COPY --chown=999 ./run.sh /srv/www/promos/current/run.sh

CMD ["/bin/bash" , "run.sh"]
