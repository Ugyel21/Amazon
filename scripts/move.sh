#!/bin/bash
# This script moves all files and folders from the source to the destination
SOURCE_DIR="/home/ubuntu/db_backup"
DEST_DIR="/home/ubuntu/test"

echo "Moving all files and directories from $SOURCE_DIR to $DEST_DIR"
mv "$SOURCE_DIR"/* "$DEST_DIR"

echo "Move completed!"
