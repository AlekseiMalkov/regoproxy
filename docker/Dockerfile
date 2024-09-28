# alpine, busybox, scratch
FROM ubuntu:latest
COPY proxy /
COPY Shanghai /etc/localtime/
COPY ca-certificates.crt /etc/ssl/certs/

ENTRYPOINT ["/proxy"]
CMD ["http -t tcp -p 0.0.0.0:8081"]