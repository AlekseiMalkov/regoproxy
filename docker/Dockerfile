# alpine, busybox, scratch
FROM ubuntu:latest

RUN apt-get update && apt-get install -y net-tools sudo iputils-ping wget

COPY proxy /
COPY Shanghai /etc/localtime/
COPY ca-certificates.crt /etc/ssl/certs/

COPY proxy.crt /
COPY proxy.key /
COPY goproxy.crt /
COPY goproxy.key /
COPY run.sh /


ENTRYPOINT ["/run.sh"]

#ENTRYPOINT ["/proxy"]
#CMD ["http -t tcp -p 0.0.0.0:8881 --auth-url http://192.168.2.31:3001/test --auth-nouser"]
#CMD ["sps -S http -T tcp -P 0.0.0.0:8881 -t tls -p :18881 -C proxy.crt -K proxy.key -h aes-256-gcm -j pass --auth-url http://192.168.2.31:3000/test --auth-nouser"]
#CMD ["sps -S http -T tcp -P 0.0.0.0:8881 -t tcp -p :18881 -h aes-256-gcm -j pass --auth-url http://192.168.2.31:3000/test --auth-nouser"]