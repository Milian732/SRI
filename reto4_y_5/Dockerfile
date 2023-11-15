FROM ubuntu:latest

RUN apt update
RUN apt install -y kea-dhcp4-server
RUN apt purge --auto-remove && apt clean

RUN mkdir -p /var/run/kea
RUN mkdir -p /var/lib/kea

COPY kea/kea-dhcp4.conf /etc/kea/kea-dhcp4.conf

EXPOSE 67/tcp
EXPOSE 67/udp

CMD ["kea-dhcp4", "-c", "etc/kea/kea-dhcp4.conf"]
