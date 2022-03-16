#! /bin/sh

curl -o docker-compose.yml https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/docker-compose.yml
mkdir config
curl -o config/named.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf
curl -o config/named.conf.default-zones https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.default-zones
curl -o config/named.conf.local https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.local
curl -o config/named.conf.options https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.options
curl -o config/db.internal.m1-5.ephec-ti.be https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/db.internal.m1-5.ephec-ti.be
curl -o config/db.m1-5.ephec-ti.be https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/db.m1-5.ephec-ti.be
