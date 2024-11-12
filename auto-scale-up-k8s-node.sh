#!/bin/bash
desired_nodes=5
current_nodes=$(kubectl get nodes --no-headers | wc -l)

if [ "$current_nodes" -lt "$desired_nodes" ]; then
  diff=$((desired_nodes - current_nodes))
  for i in $(seq 1 "$diff"); do
    kubeadm join --token <your-token> <your-master-ip>:6443
    echo "New node added."
  done
fi

