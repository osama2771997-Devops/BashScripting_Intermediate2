#!/bin/bash

# Define variables
BUCKET_NAME="osamasdevops-backup-bucket"
REGION="us-east-1"

echo "Creating S3 bucket: $BUCKET_NAME"

# Create S3 bucket
if aws s3api create-bucket \
    --bucket "$BUCKET_NAME" \
    --region "$REGION"; then

    echo "S3 bucket created successfully!"

else
    echo "Error: Failed to create S3 bucket."
    exit 1
fi