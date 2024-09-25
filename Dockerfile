FROM busybox
LABEL maintainer="Lukas Korl <hello@lukaskorl.com>"

COPY template.html entrypoint.sh /

RUN wget -O /usr/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_$(uname -m) && \
    chmod +x /usr/bin/dumb-init && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["dumb-init", "/entrypoint.sh"]
