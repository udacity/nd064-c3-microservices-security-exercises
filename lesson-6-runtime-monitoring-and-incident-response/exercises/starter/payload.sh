#!/bin/bash
#start monero_cpu_moneropool:latest
kubectl run moneropool --image=servethehome/monero_cpu_moneropool:latest
#start xmrpooldotnet
kubectl run xmrpooldotnet --image=servethehome/monero_cpu_xmrpooldotnet:latest
#start minergate
kubectl run minergate --image=servethehome/monero_cpu_minergate:latest

echo "Can you identify the payload(s)?"