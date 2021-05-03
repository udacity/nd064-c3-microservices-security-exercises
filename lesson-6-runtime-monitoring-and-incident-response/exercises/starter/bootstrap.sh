#!/bin/bash

echo "[TASK 1] Install Docker" 
# install Docker
zypper --non-interactive install docker
systemctl enable docker
usermod -G docker -a $USER
systemctl restart docker

echo "[TASK 2] Disable firewalld"
systemctl stop firewalld
systemctl disable firewalld

echo "[TASK 3] Disable apparmor"
systemctl stop apparmor
systemctl disable apparmor

echo "[TASK 4] Set up rke user"
useradd rke
usermod -a -G docker rke
systemctl restart docker

echo "[TASK 5] Copy auth_keys for rke user"
mkdir -p /home/rke/.ssh
usermod -d /home/rke/ rke
cp /root/.ssh/authorized_keys /home/rke/.ssh
chown rke /home/rke -R
