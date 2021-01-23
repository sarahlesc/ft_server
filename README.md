# ft_server

## DESCRIPTION

Ce sujet à pour but de vous faire découvir découvrir l’administration système en vous sensibilisant a l’importance de l’utilisation de scripts pour automatiser vos taches. Pour ce faire, nous allons vous faire découvrir la technologie "Docker" afin de vous faire installer un server web complet, qui sera capable de faire tourner plusieurs services, tel qu’un Wordpress, Phpmyadmin, ainsi qu’une base de donnée.

**:white_check_mark: GRADE : 100/100 :white_check_mark:**


## How to build and run docker

`docker build -t <nom_containeur> .`

`docker run -it --rm -p 80:80 -p 443:443 <nom_containeur>`


## Tuto

Documentation utilisée :
* [Comprendre Dockerfile](https://rollout.io/blog/what-is-a-dockerfile/)
* [Tuto ft_server partie 1](https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861)
* [Tuto ft_server Partie 2](https://forhjy.medium.com/42-ft-server-how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-2-4042adb2ab2c)

### Dockerfile
* Debian:buster 
* update, upgrade, install (pour être sûr que Docker est bien à jour) 
* installer les installations NGINX, mySQL, wget et PHP 
* EXPOSE 80 443 pour que le containeur fonctionne bien sous ces ports 
* lancer le script d'installation du serveur

### srcs
* script bash d'initialisation du Docker 
* configurateur du serveur NGINX 
* configurateur de la base de données SQL (.sql) 
* configurateur de Wordpress (wp-config.php) 
* configurateur de PHPmyAdmin (config.inc.php) 
* certificat de sécurité
* autoindex switch : script bash
