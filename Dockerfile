<<<<<<< HEAD
FROM xtremxpert/alpine:latest

MAINTAINER "XtremXpert <benoit@vezina.biz>"

RUN apk --update add \
        haproxy \
    && \
    rm /var/cache/apk/*

=======
FROM xtremxpert/docker-alpine:latest

RUN apk -U upgrade && \
	apk --update add \
		haproxy \
	&& \
	rm /var/cache/apk/*

VOLUME ["/etc/haproxy"]	
	
>>>>>>> origin/master
CMD [ "/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-db" ]
