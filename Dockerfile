FROM ubuntu:latest
LABEL maintainer="emilio@ociotec.com"

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get -qq clean

RUN add-apt-repository ppa:beineri/opt-qt593-xenial && \
    apt-get update && \
    apt-get install -y qt59-meta-minimal && \
    apt-get -qq clean

RUN apt-get update && \
    apt-get install -y build-essential cmake && \
    apt-get -qq clean

RUN apt-get update && \
    apt-get install -y git && \
    apt-get -qq clean

WORKDIR /tmp

