

#!/bin/bash

# Exit if any command fails
set -e

# Define variables
SOURCE_DIR="/workspaces/BashScripting_Intermediate2"
BACKUP_DIR="/backups"
S3_BUCKET="s3://osamasdevops-backup-bucket"

echo "Starting backup process..."

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist!"
    exit 1
fi

# Create backup directory
sudo mkdir -p "$BACKUP_DIR"

# Copy source files to backup directory
sudo cp -r "$SOURCE_DIR"/. "$BACKUP_DIR"/

echo "Files copied successfully."

# Sync backup directory to S3
aws s3 sync "$BACKUP_DIR" "$S3_BUCKET"

echo "Backup completed successfully!"
