#!/bin/bash

INSTANCE_TYPE="t2.micro"
AMI_ID="ami-0d97d7f07b25dd693"
KEY_NAME="LearnDevopswithMiseacademy"
SECURITY_GROUP_ID="sg-011fc008156418960"
INSTANCE_NAME="Devops-server-Osama"

aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP_ID \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
  >/dev/null 2>&1

echo "✅ EC2 instance '$INSTANCE_NAME' launched successfully."

