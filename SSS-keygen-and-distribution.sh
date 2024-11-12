#!/bin/bash
servers=("host1" "host2" "host3")
key_file="$HOME/.ssh/id_rsa"

# Generate SSH key if not exists
if [ ! -f "$key_file" ]; then
  ssh-keygen -t rsa -b 2048 -f "$key_file" -N ""
fi

for server in "${servers[@]}"; do
  ssh-copy-id -i "$key_file.pub" "$server"
  echo "SSH key copied to $server."
done

