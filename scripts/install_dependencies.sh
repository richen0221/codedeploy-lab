#!/bin/bash
ACCOUNT_ID=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .accountId`
docker rmi $ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/demo
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com
docker pull $ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/demo:latest
