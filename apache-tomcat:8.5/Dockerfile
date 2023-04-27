FROM tomcat:8.5

LABEL maintainer="Ajay"

ENV USER tomcat

RUN groupadd -g 999 $USER && useradd -r -u 999 -g $USER $USER

RUN mkdir -p /opt/lmsa

COPY ./vault.properties /opt/lmsa/vault.properties

ADD ./inspirenetz-api.war /usr/local/tomcat/webapps/

EXPOSE 8088

CMD ["catalina.sh", "run"]
