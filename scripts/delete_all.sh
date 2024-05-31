#!/bin/bash
# This script deletes all files in the specified directory
TARGET_DIR="/home/ubuntu/db_backup"

# Confirm before deletion
read -p "Are you sure you want to delete all files in $TARGET_DIR? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Deleting all files in $TARGET_DIR"
    
    # Check if directory exists and is not empty
    if [ -d "$TARGET_DIR" ]; then
        if find "$TARGET_DIR" -mindepth 1 -print -quit | grep -q .; then
            rm -v "$TARGET_DIR"/*
            echo "Deletion completed!"
        else
            echo "No files to delete in $TARGET_DIR."
        fi
    else
        echo "Directory $TARGET_DIR does not exist."
    fi
else
    echo "Deletion aborted."
fi
