#!/bin/sh

sudo zypper -n in docker
sudo systemctl start docker
sudo systemctl enable docker
sudo gpasswd -a "${USER}" docker
sudo reboot
