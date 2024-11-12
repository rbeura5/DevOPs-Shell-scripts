#!/bin/bash
jenkins_url="http://jenkins.example.com/job/myjob/build"
username="jenkins_user"
api_token="your_api_token"

curl -u "$username:$api_token" -X POST "$jenkins_url"
echo "Triggered Jenkins job at $jenkins_url"

#Trigger a Jenkins job via the CLI or API.
