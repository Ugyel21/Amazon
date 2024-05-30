#!/bin/bash
# This is a simple backup script
echo "Starting the backup process..."
cp -r /mnt/backup/ /home/ubuntu/db_backup
echo "Backup completed successfully!"