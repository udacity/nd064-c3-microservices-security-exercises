#!/bin/sh
docker rm -f $(docker ps -qa)
docker volume rm $(docker volume ls -q)
cleanupdirs="/var/lib/etcd* /etc/kubernete* /etc/cni* /opt/cni* /var/lib/cni* /var/run/calico* /var/lib/kubelet*"
for dir in $cleanupdirs; do
  echo "Removing $dir"
  rm -Rf $dir
done
