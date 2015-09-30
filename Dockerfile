FROM alpine:latest
MAINTAINER "Aleksandr Derbenev <ya.alex-ac@yandex.com>"
RUN apk --update add haproxy && rm /var/cache/apk/*
CMD [ "/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-db" ]
