#!/bin/bash

BUCKET="mb-project19-scheduled-backup-2026"
LOG_DIR="$HOME/Desktop/project19-s3/logs"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

echo "Starting S3 backup: $DATE"

aws s3 cp "$LOG_DIR/" \
"s3://$BUCKET/backups/$DATE/" \
--recursive

if [ $? -eq 0 ]; then
    echo "Backup completed successfully"
else
    echo "Backup failed"
    exit 1
fi
