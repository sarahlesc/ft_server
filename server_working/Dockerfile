FROM debian:buster

RUN apt-get update -qy \
&& apt-get upgrade -qy \
&& apt-get install -qy nginx default-mysql-server mariadb-server php7.3-fpm php7.3-mysql wget

COPY ./srcs/* srcs_docker/

EXPOSE 80 443

ENTRYPOINT ["srcs_docker/docker-entrypoint.sh"]