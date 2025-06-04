#syntax=docker/dockerfile:1.0-experimental

#define base image; replace with your image location once hardened
FROM opensuse/leap:15.6

#define maintainer 
LABEL maintainer="nick.reva@snap.com"

#define version
LABEL version="V1"

#refresh zypper and install updates
RUN zypper ref

#add local user
USER $SEC_USER
