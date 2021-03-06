FROM imba3r/alpine
MAINTAINER imba3r

# Update packages and install software
RUN set -x \
    && apk update \
    && apk add --no-cache openvpn \
    && rm -rf /var/cache/apk/* /tmp/*

COPY openvpn/ /etc/openvpn/

CMD /etc/openvpn/start.sh
