#!/bin/bash
# This script deletes files older than 30 days in the specified directory
TARGET_DIR="/home/ubuntu/db_backup"
DAYS_OLD=30

echo "Deleting files older than $DAYS_OLD days in $TARGET_DIR"
find "$TARGET_DIR" -type f -mtime +"$DAYS_OLD" -exec rm -v {} \;

echo "Deletion completed!"
