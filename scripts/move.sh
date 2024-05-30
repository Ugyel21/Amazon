#!/bin/bash
# This script moves all files and folder a source to destination
SOURCE_DIR="/home/ubuntu/test"
DEST_DIR = '/home/ubuntu/db_backup'

echo "Moving all files and directories from $SOURCE_DIR to $DEST_DIR"
mv $SOURCE_DIR/* $DEST_DIR

echo "Move completed!"
