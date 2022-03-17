FROM internetsystemsconsortium/bind9:9.16

COPY db.local /etc/bind/
COPY named.conf /etc/bind/named.conf.template
#COPY db.interne /etc/bind/db.interne.template
COPY db.externe /etc/bind/db.externe.template

RUN apt-get update && apt-get -y install dnsutils gettext-base