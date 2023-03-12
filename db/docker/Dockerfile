FROM mysql:8.0.26

COPY ./db/docker/my.cnf /etc/my.cnf
RUN chmod 644 /etc/my.cnf
RUN apk add bash