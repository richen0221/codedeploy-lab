#!/bin/bash
ACCOUNT_ID=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .accountId`
docker run --name demo -d --restart=always -p 8080:8080 $ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/demo:latest
