# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: slescure <slescure@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/14 17:34:52 by slescure          #+#    #+#              #
#    Updated: 2021/01/14 18:37:04 by slescure         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

# add utilities
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install wget

# add NGINX
RUN apt-get -y install nginx
RUN apt-get -y install mariadb-server

# add and configure PHPmyadmin
RUN apt-get -y install php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

WORKDIR /var/www/html/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin
COPY ./srcs/config.inc.php phpmyadmin

# configure wordpress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz
COPY ./srcs/wordpress-config.php /var/www/html

# use of protocole SSL
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj '/C=FR/ST=75/L=Paris/O=42/CN=ncolomer' \
	-keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

#configure the database
RUN chown -R www-data:www-data *
RUN chmod -R 755 /var/www/*
COPY ./srcs/config_database_wp.sh ./
CMD bash config_database_wp.sh
