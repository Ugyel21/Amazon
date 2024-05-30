#!/bin/bash
# This script deletes all .tmp files in the specified directory

TARGET_DIR="/path/to/directory"
echo "Deleting .tmp files in $TARGET_DIR"
rm -v $TARGET_DIR/*.tmp
echo "Deletion completed!"