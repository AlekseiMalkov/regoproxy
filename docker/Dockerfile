# alpine, busybox, scratch
FROM ubuntu:latest

RUN apt-get update && apt-get install -y net-tools sudo iputils-ping

COPY proxy /
COPY Shanghai /etc/localtime/
COPY ca-certificates.crt /etc/ssl/certs/

ENTRYPOINT ["/proxy"]
CMD ["http -t tcp -p 0.0.0.0:8881 --auth-url http://192.168.2.31:3000/test --auth-nouser"]