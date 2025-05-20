FROM opensuse/leap:15.6

#define maintainer 
LABEL maintainer="nick.reva@snap.com"

#define version
LABEL version="V1"

# set working directory
RUN mkdir -p /udacity
WORKDIR /udacity

#install zypper 
RUN zypper refs && zypper refresh

#add local user
USER $SEC_USER
