FROM qmcgaw/gluetun:latest
#FROM qmcgaw/gluetun:v3.27.0

RUN apk --update add busybox-extras

# Set the working directory to /usr/src/app.
WORKDIR /vpn

# Copy the file from the local host to the filesystem of the container at the working directory.
COPY /vpn ./

ENV VPNSP=custom
ENV OPENVPN_CUSTOM_CONFIG=/vpn/Charlotte.ovpn
ENV OPENVPN_USER=qg5xgU6emtfSjaWW1Yt57D7W
ENV OPENVPN_PASSWORD=wYkZStuubvErqXsvHagYp7pe

# ENV OPENVPN_CUSTOM_CONFIG=/vpn/Atlanta.ovpn
# ENV OPENVPN_USER=p5068230
# ENV OPENVPN_PASSWORD=jbiFGqPrrr

ENV FIREWALL=on
ENV FIREWALL_OUTBOUND_SUBNETS=192.168.0.0/16,172.16.0.0/12,10.0.0.0/8
ENV EXTRA_SUBNETS=192.168.0.0/16,172.16.0.0/12,10.0.0.0/8
ENV OPENVPN_ROOT=yes
ENV TZ=America/New_York
ENV OPENVPN_VERBOSITY=2

# ENV DNS_KEEP_NAMESERVER=on
# ENV DOT=off
