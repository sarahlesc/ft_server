FROM debian:buster
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install wget
RUN apt-get -yq update && apt-get -yq install mariadb-server \php \ php-cli \ php-cgi \ php-mbstring \ php-fpm \ php-mysql \ nginx \ libnss3-tools
COPY scrs ./root/
WORKDIR /root/
