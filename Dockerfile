FROM xtremxpert/docker-alpine:latest

MAINTAINER "XtremXpert <benoit@vezina.biz>"

RUN apk -U upgrade && \
	apk --update add \
		haproxy \
	&& \
	rm /var/cache/apk/*

VOLUME ["/etc/haproxy"]

CMD [ "/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-db" ]
