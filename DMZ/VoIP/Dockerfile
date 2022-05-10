FROM ubuntu:20.04
RUN apt-get update && apt-get -y full-upgrade \
    && apt-get install -y nano

# Installation des dépendances
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install -y \
  apt-utils \
  build-essential \
  wget \
  openssl \
  libxml2-dev \
  libncurses5-dev \
  uuid-dev \
  sqlite3 \
  libsqlite3-dev \
  pkg-config \
  libjansson-dev \
  libedit-dev \
  libssl-dev

RUN echo "Europe/Brussels" | tee /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

# Installation d'Asterisk LTS (10/05/22)
WORKDIR /usr/local/src/
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-18.11.3.tar.gz
RUN tar -xvzf asterisk-18.11.3.tar.gz
WORKDIR /usr/local/src/asterisk-18.11.3/
RUN ./configure
RUN make
RUN make install
RUN make samples
RUN make config

RUN apt-get -y install fail2ban

COPY ./config/ /etc/asterisk/

EXPOSE 5060/udp
EXPOSE 5060/tcp

EXPOSE 19000-20000/udp

#Run asterisk
CMD ["asterisk", "-f"]