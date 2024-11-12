#!/bin/bash
domains=("example.com" "anotherdomain.com")

for domain in "${domains[@]}"; do
  certbot renew --cert-name "$domain"
  echo "Renewed SSL certificate for $domain."
done
 
#This script automates the renewal process of SSL certificates using Certbot.


