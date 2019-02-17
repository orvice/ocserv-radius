FROM debian:stretch

RUN apt-get update -y
RUN apt-get install -y libgnutls30 libprotobuf-c1 liboath0 libev4
RUN apt-get install -y libwrap0 libpam0g libseccomp2 libdbus-1-3 libreadline5 libnl-route-3-200
RUN apt-get install -y libhttp-parser2.1 libpcl1 libopts25
RUN apt-get install -y libsystemd0 valgrind nuttcp openssh-server bash
RUN apt-get install -y libtalloc2 liblz4-1 freeradius libradcli4
RUN apt-get install -y libkrb5-3 less
RUN apt-get install -y ocserv
RUN sed 's/PermitRootLogin without-password/PermitRootLogin yes/g' -i /etc/ssh/sshd_config


RUN echo 'root:root' |chpasswd
RUN useradd -m -d /home/admin -s /bin/bash admin
RUN echo 'admin:admin' |chpasswd

RUN mkdir /etc/ocserv
RUN mv /var/log/freeradius /var/log/radius



CMD /usr/sbin/ocserv
