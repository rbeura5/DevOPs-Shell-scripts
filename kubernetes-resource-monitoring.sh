#!/bin/bash
namespace="default"

kubectl top pod -n "$namespace" | awk '{if(NR>1)print $1 " - CPU:" $2 ", Memory:" $3}'

