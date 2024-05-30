#!/bin/bash
# This script checks for new files in a directory and copies them to a backup location
SOURCE_DIR="/mnt/backup"
BACKUP_DIR="/home/ubuntu/db_backup"
LOG_FILE="/mnt/backup/backup.log"

echo "Backup started $(date)" >> $LOG_FILE

# Loop through all files in the source directory
for file in $SOURCE_DIR/*; do
    if [ -f "$file"]; then # Check if it is a file
        cp "$file" "$BACKUP_DIR"
        echo "Copied $file to $BACKUP_DIR" >> $LOG_FILE
    fi
done

echo "Backup completed at $(date)" >> $LOG_FILE