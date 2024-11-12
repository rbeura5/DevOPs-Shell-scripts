#!/bin/bash
namespace="dev"

kubectl delete all --all -n "$namespace"
echo "All resources in namespace $namespace have been deleted."

