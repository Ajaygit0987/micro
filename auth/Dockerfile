EXPOSE 50002
VOLUME /var/log/auth

# create a new user and group (to not run docker as a root user)
ENV USER app-auth
RUN groupadd -g 999 $USER && useradd -r -u 999 -g $USER $USER



# Create required path and add jar files
RUN mkdir -p /srv/www/auth/current
WORKDIR /srv/www/auth/current
COPY ./auth-*.jar /srv/www/auth/current/
RUN mv auth-*.jar auth-exec.jar

COPY --chown=999 ./run.sh /srv/www/auth/current/run.sh

CMD ["/bin/bash" , "run.sh"]
