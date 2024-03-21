#Definir l'image de base
FROM ubuntu
MAINTAINER toumama

#Install des elements necessaires pour accueillir l'application

RUN apt-get update

#Installation du serveur web qui va accueillir notre site web
RUN apt-get install -y nginx

#copie de l ensemble des fichiers vers le repertoire
ADD * /var/www/html/

#Indication du port sur lequel va tourner l'application
EXPOSE 80

#Comment l'application va -t-elle s'exécuter
#lancement du servie et execution en arriere plan
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
