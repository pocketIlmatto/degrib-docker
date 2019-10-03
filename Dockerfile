FROM ubuntu:18.04

ADD ./setup.sh /sbin

RUN apt-get update && \
    apt-get install curl -y && \
    apt-get install build-essential -y && \
    /sbin/setup.sh && \
    apt-get remove build-essential -y && \
    apt-get remove curl -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
