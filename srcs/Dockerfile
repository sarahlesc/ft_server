FROM debian:buster

RUN apt-get update -qy \
&& apt-get upgrade -qy \
&& apt-get install -qy nginx default-mysql-server mariadb-server wget
RUN apt-get -yq install php7.3-fpm php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

COPY ./srcs/* srcs_docker/

EXPOSE 80 443

CMD bash srcs_docker/docker_init.sh
