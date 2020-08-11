FROM python:3.7.7-alpine3.12

ARG DOCKER_VERSION=18.09.9

RUN apk add -U ca-certificates git curl jq openssh && \
    rm -rf linux-amd64 && \
    pip install awscli && \
    rm /var/cache/apk/*

RUN curl -fsSL https://download.docker.com/linux/static/stable/`uname -m`/docker-$DOCKER_VERSION.tgz | tar --strip-components=1 -xz -C /usr/local/bin docker/docker
