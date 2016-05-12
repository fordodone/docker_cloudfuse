## FILE: Dockerfile
FROM ubuntu:16.04
MAINTAINER ForDoDone <fordodone@gmail.com>

RUN apt-get update && \
    apt-get install -y build-essential libcurl4-openssl-dev libxml2-dev libssl-dev libfuse-dev wget pkg-config libjson0 libjson0-dev fuse vim 

RUN cd /usr/src && \
    wget https://github.com/fordodone/cloudfuse/tarball/master -O cloudfuse.tar.gz && \
    mkdir cloudfuse && \
    cd cloudfuse && \
    tar xzf ../cloudfuse.tar.gz --strip 1 && \
    rm -f ../cloudfuse.tar.gz

RUN cd /usr/src/cloudfuse && \
    ./configure && \
    make && \
    make install

COPY credentials /root/.cloudfuse

RUN mkdir -p /mnt/cloudfuse

RUN echo "cloudfuse /mnt/cloudfuse" >> /root/.bashrc

CMD /bin/bash

