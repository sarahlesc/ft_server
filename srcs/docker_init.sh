#!/bin/bash

service nginx start
service mysql start
service php7.3-fpm start

#install NGINX et le serveur
cp srcs_docker/nginx-config /etc/nginx/sites-available/nginx-config #copier le document necessaire a la mise en place du serveur
ln -s /etc/nginx/sites-available/nginx-config  /etc/nginx/sites-enabled/nginx-config #creation d'un lien symbolique entre les sites dispo et les sites ou on peut avoir acces
rm /etc/nginx/sites-enabled/default #on supprime la configuration par defaut du serveur

# implementation of autoindex
cp srcs_docker/autoindex_switch.sh .
chmod +x autoindex_switch.sh

#install PHPMYADMIN
wget -c https://files.phpmyadmin.net/phpMyAdmin/4.9.2/phpMyAdmin-4.9.2-english.tar.gz -O - | tar -xz -C /var/www
mv var/www/phpMyAdmin-4.9.2-english var/www/phpmyadmin
cp srcs_docker/config.inc.php var/www/phpmyadmin
chown -R www-data: /var/www/phpmyadmin #donne les droits pour y avoir acces

#install WORDPRESS
wget -c https://wordpress.org/latest.tar.gz -O - | tar -xz -C /var/www
chown -R www-data: /var/www/wordpress #donne les droits pour y avoir acces
cp srcs_docker/wp-config.php /var/www/html

mysql < srcs_docker/data_base.sql  #creation de la base de donnees du serveur

#creation de l'autocertification
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt < srcs_docker/self_certificate

service nginx restart
/bin/bash
