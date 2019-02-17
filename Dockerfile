FROM debian:stretch

RUN apt-get update -y
RUN apt-get install -y freeradius-utils libpam-radius-auth
RUN apt-get install -y ocserv


RUN mkdir /etc/ocserv
RUN mv /var/log/freeradius /var/log/radius


CMD /usr/sbin/ocserv
