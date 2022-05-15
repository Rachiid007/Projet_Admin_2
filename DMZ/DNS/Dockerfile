# version LTS
FROM ubuntu:20.04

# Installation de bind9 et d'outils supplémentaires au débugging
RUN apt-get update && apt-get full-upgrade -y \
    apt-get install bind9 bind9utils dnsutils net-tools nano -y

ENV TZ=Europe/Brussel
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Copie des fichiers d'installations préparé et configuré
COPY named.conf /etc/bind/named.conf
COPY db.m1-5.ephec-ti.be /etc/bind/zones/db.m1-5.ephec-ti.be

# Exposition des ports de l'image sur le port 53 tcp et udp
EXPOSE 53/udp
EXPOSE 53/tcp
EXPOSE 953/tcp

VOLUME /etc/bind

# Commande réalisé au démarage du conteneur
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
