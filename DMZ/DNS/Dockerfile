# version LTS
FROM ubuntu:20.04

# Installation de bind9 et d'outils supplémentaires au débugging
RUN apt update && apt full-upgrade -y && \
    apt install bind9 bind9utils dnsutils net-tools nano -y

ENV TZ=Europe/Brussel
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Copie des fichiers d'installations préparé et configuré
COPY named.conf /etc/bind/named.conf
COPY db.m1-5.ephec-ti.be /etc/bind/zones/db.m1-5.ephec-ti.be

# Exposition des ports de l'image sur les ports 53 et 953 en tcp et udp.
EXPOSE 53/udp
EXPOSE 53/tcp
EXPOSE 953/tcp
EXPOSE 953/udp

VOLUME /etc/bind

# Commande réalisé au démarage du conteneur
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]