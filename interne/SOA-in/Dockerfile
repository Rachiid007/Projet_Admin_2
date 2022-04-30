FROM ubuntu:latest

RUN apt update && apt full-upgrade -y && apt install bind9 bind9utils dnsutils net-tools nano -y

COPY named.conf /etc/bind/named.conf
COPY intranet.m1-5.ephec-ti.be /etc/bind/intranet.m1-5.ephec-ti.be
COPY reverse /etc/bind/reverse

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
