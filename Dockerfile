FROM --platform=$BUILDPLATFORM alpine:3.16.2

RUN apk add --no-cache openssl

ARG BUILDARCH
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-$BUILDARCH-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-$BUILDARCH-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-$BUILDARCH-$DOCKERIZE_VERSION.tar.gz
