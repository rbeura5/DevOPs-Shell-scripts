#!/bin/bash
url="http://example.com"
threshold=2

response_time=$(curl -o /dev/null -s -w "%{time_total}" "$url")
if (( $(echo "$response_time > $threshold" | bc -l) )); then
  echo "Response time for $url is $response_time seconds, exceeding threshold of $threshold seconds." | mail -s "Website Response Time Alert" admin@example.com
else
  echo "Response time for $url is within the acceptable range."
fi

#This script monitors the response time of a website and alerts if it exceeds a given threshold.


