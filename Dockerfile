FROM ubuntu:14.04
MAINTAINER Karl Ni

RUN apt-get update && \
    apt-get install -y g++ zlib1g-dev make automake libtool git autoconf && \
    apt-get install -y subversion libatlas3-base bzip2 wget python2.7 && \
    ln -s /usr/bin/python2.7 /usr/bin/python && \
    ln -s -f bash /bin/sh


