FROM ubuntu:yakkety
MAINTAINER Martin Souchal "souchal@apc.in2p3.fr"

RUN apt-get update && \
    apt-get install -y python wget software-properties-common build-essential python-dev sgml-base rsync xml-core openssh-client && \
    apt-get clean

RUN add-apt-repository universe && \
    apt-get update && \
    apt-get -y install cmake git gfortran openmpi-common openmpi-bin libopenmpi-dev && \
    apt-get clean

ADD ./mpi-ping.c /work/mpi-ping.c
