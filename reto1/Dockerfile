FROM ubuntu:latest

RUN apt update
RUN apt install -y dnsutils
RUN apt install -y bind9
RUN apt install -y bind9utils
RUN apt purge --auto-remove && apt clean

COPY dns-config/bind/named.conf.local /etc/bind/
COPY dns-config/bind/named.conf.options /etc/bind/
COPY dns-config/bind/zones/db.adrian.com /etc/bind/zones/

EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp

CMD ["/usr/sbin/named","-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
