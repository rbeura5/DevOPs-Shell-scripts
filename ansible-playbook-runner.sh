#!/bin/bash
playbook="site.yml"
inventory="hosts"
limit="webservers"

ansible-playbook -i "$inventory" "$playbook" --limit "$limit"

