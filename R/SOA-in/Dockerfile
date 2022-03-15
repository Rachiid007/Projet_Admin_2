FROM resystit/bind9

COPY named.conf /etc/bind/named.conf
COPY intranet.m1-5.ephec-ti.be /etc/bind/intranet.m1-5.ephec-ti.be
COPY reverse /etc/bind/reverse

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]