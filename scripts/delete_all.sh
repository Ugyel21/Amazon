#!/bin/bash
# This script deletes all files in the specified directory
TARGET_DIR="/home/ubuntu/db_backup"
echo "Deleting all files in $TARGET_DIR"
rm -v $TARGET_DIR/*

echo "Deletion completed!"
