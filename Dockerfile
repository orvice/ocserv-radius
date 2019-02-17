FROM debian:stretch

RUN apt-get update -y
RUN apt-get install -y freeradius-utils libpam-radius-auth
RUN apt-get install -y ocserv



CMD /usr/sbin/ocserv
