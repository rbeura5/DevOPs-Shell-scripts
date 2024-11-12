#!/bin/bash
jenkins_url="http://jenkins.yourdomain.com/job/your-job-name/build"
jenkins_user="your_username"
jenkins_token="your_token"

curl -X POST "$jenkins_url" --user "$jenkins_user:$jenkins_token"
echo "Jenkins job triggered."

