FROM alpine:3.15

RUN apk --update --no-cache add bind bind-dnssec-tools

COPY named.conf /etc/bind/named.conf
COPY m1-5.ephec-ti.be /etc/bind/m1-5.ephec-ti.be

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]