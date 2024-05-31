#!/bin/bash

# Set the date to include in the backup file name
date=$(date +"%d%m%Y_%H%M%S")

# Set the backup directory
backup_dir="/mnt/backup"

# Set MySQL/MariaDB credentials
db_user="admin"
db_password="Bhutan@24"

# Set the list of databases to backup
databases="products"

# Loop through each database and perform the backup
for db in $databases; do
    mysqldump -u$db_user -p$db_password $db > $backup_dir/products_${date}.sql
done

echo "DB Backup successfully!"