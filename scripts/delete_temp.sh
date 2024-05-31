#!/bin/bash
# This script deletes all .tmp files in the specified directory

TARGET_DIR="/home/ubuntu/db_backup/test4"

# Check if the directory exists
if [ -d "$TARGET_DIR" ]; then
    # Check if there are .tmp files to delete
    if ls "$TARGET_DIR"/*.tmp 1> /dev/null 2>&1; then
        echo "Deleting .tmp files in $TARGET_DIR"
        rm -v "$TARGET_DIR"/*.tmp
        echo "Deletion completed!"
    else
        echo "No .tmp files found in $TARGET_DIR."
    fi
else
    echo "Directory $TARGET_DIR does not exist."
fi
