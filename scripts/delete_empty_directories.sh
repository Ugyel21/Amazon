#!/bin/bash
# This script deletes empty directories in the specified directory
TARGET_DIR="/home/ubuntu/db_backup"
DAYS_OLD=30
echo "Deleting empty directories in $TARGET_DIR"
find $TARGET_DIR -type d -empty -exce rmdir -v {} \;

echo "Deletion completed!"