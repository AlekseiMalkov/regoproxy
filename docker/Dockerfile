# alpine, busybox, scratch
FROM ubuntu:latest

RUN apt-get update && apt-get install -y net-tools sudo iputils-ping wget

COPY proxy /
COPY Shanghai /etc/localtime/
COPY ca-certificates.crt /etc/ssl/certs/

RUN ./proxy keygen -C proxy

ENTRYPOINT ["/proxy"]
#CMD ["http -t tcp -p 0.0.0.0:8881 --auth-url http://192.168.2.31:3000/test --auth-nouser"]
#CMD ["sps -S http -T tcp -P 0.0.0.0:8881 -t tcp -p :18881 -C proxy.crt -K proxy.key -h aes-192-cfb -j pass --auth-url http://192.168.2.31:3000/test --auth-nouser"]
CMD ["sps -S http -T tcp -P 0.0.0.0:8881 -t tcp -p :18881 -h aes-192-cfb -j pass --auth-url http://192.168.2.31:3000/test --auth-nouser"]