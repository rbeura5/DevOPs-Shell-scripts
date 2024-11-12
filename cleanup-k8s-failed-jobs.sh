#!/bin/bash
kubectl delete job -n default --field-selector=status.failed>0
echo "Deleted failed jobs in the default namespace."
