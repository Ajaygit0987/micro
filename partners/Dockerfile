FROM openjdk:8u322-slim-buster

# Expose required port and define log dir
EXPOSE 50080
VOLUME /var/log/partners

# create a new user and group (to not run docker as a root user)
ENV USER app-partners
RUN groupadd -g 999 $USER && useradd -r -u 999 -g $USER $USER



# Create required path and add jar files
RUN mkdir -p /srv/www/partners/current
WORKDIR /srv/www/partners/current
COPY ./partners-*.jar /srv/www/partners/current/
RUN mv partners-*.jar partners-exec.jar

COPY --chown=999 ./run.sh /srv/www/partners/current/run.sh

CMD ["/bin/bash" , "run.sh"]
