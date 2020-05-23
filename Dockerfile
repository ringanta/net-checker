FROM alpine:3.11

LABEL maintainer="ringanta.ginting@gmail.com"

RUN apk update \
    && apk add \
        nmap \
        nmap-scripts \
        curl \
        bind-tools \
        openssl \
        python3 \
        py3-pip \
    && rm -rf /var/cache/apk/*

RUN pip3 install httpstat
