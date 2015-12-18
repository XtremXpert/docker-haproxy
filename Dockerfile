FROM xtremxpert/alpine:latest

MAINTAINER "XtremXpert <benoit@vezina.biz>"

RUN apk --update add \
        haproxy \
    && \
    rm /var/cache/apk/*

CMD [ "/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-db" ]
