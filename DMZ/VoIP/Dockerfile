FROM ubuntu:20.04

RUN apt-get update -y && apt-get full-upgrade -y

# Change timezone
ENV TZ=Europe/Brussel
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

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
  libssl-dev \
  nano

# Installation d'Asterisk 18.11.3 (LTS à la date du 12/05/2022)
WORKDIR /usr/local/src/
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-18.11.3.tar.gz
RUN tar -xvzf asterisk-18.11.3.tar.gz
WORKDIR /usr/local/src/asterisk-18.11.3/
RUN ./configure
RUN make
RUN make install
RUN make samples
RUN make config

COPY ./config/users.conf /etc/asterisk/users.conf
COPY ./config/sip.conf /etc/asterisk/sip.conf
COPY ./config/extensions.conf /etc/asterisk/extensions.conf
COPY ./config/voicemail.conf /etc/asterisk/voicemail.conf
COPY ./config/features.conf /etc/asterisk/features.conf
COPY ./config/logger.conf /etc/asterisk/logger.config

# SIP
EXPOSE 5060/udp
EXPOSE 5060/tcp

# RTP
EXPOSE 19000-20000/udp

CMD ["asterisk", "-f"]
