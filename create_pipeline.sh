#!/bin/bash

echo "Enter Jenkins URL:"
read JENKINS_URL

echo "Enter Jenkins Username:"
read USER

echo "Enter Jenkins API Token:"
read -s TOKEN

echo "Enter Pipeline Job Name:"
read JOB_NAME

echo "Creating Jenkins Pipeline..."

curl -X POST "$JENKINS_URL/createItem?name=$JOB_NAME" \
--user "$USER:$TOKEN" \
-H "Content-Type: application/xml" \
--data-binary @config.xml  


echo "Pipeline Created Successfully"

