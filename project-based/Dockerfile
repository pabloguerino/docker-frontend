FROM node:8-alpine

MAINTAINER Pablo Guerino

VOLUME /work
WORKDIR /work

ENV HOME "/tmp"
ENV PACKAGES "g++ git python2 make"

ADD package.json /

RUN mkdir /fake-home && \
    chmod 777 /fake-home & \
    apk add --no-cache $PACKAGES && \
    cd / && \
    npm config set python /usr/bin/python && \
    npm install && \
    npm install -g gulp && \
    apk del --no-cache --purge $PACKAGES

COPY docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["npm", "run", "build"]
