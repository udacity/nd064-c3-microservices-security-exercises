# syntax=docker/dockerfile:1.0-experimental

#define base image; replace with your image location once hardened
FROM opensuse/leap:latest

#define maintainer 
LABEL maintainer="nick.reva@snap.com"

#define version
LABEL version="V1"

# create a directory to work in
RUN mkdir udacity \
    && cd udacity

#install zypper 
RUN zypper refs && zypper refresh

#add local user
USER $SEC_USER
