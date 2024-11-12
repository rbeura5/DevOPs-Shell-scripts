#!/bin/bash
elb_name="my-load-balancer"

aws elb describe-instance-health --load-balancer-name "$elb_name" \
--query 'InstanceStates[*].{ID:InstanceId,State:State}' --output table

