#!/bin/bash
#start monero_cpu_moneropool:latest
kubectl run --kubeconfig kube_config_cluster.yml moneropool --image=servethehome/monero_cpu_moneropool:latest --replicas=1
#start xmrpooldotnet
kubectl run --kubeconfig kube_config_cluster.yml xmrpooldotnet --image=servethehome/monero_cpu_xmrpooldotnet:latest --replicas=1
#start minergate
kubectl run --kubeconfig kube_config_cluster.yml minergate --image=servethehome/monero_cpu_minergate:latest --replicas=1

echo "Can you identify the payload(s)?"