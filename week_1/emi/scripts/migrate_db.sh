#!/bin/bash

db_name="ecommerce_shop"
db_user="root"
date=$(date +%Y-%m-%d_%H-%M-%S)
backup_file="ecommerce_shop_backup_$date.sql"
backup_path="./$backup_file"

echo "backup '$db_name'..."
sudo mysqldump -u "$db_user" -p "$db_name" > "$backup_path"

if [ $? -ne 0 ]; then
    echo "backup failed..."
    exit 1
fi

echo "backup saved as $backup_path"

echo "drop db: '$db_name'"
sudo mysql -u "$db_user" -p -e "DROP DATABASE IF EXISTS $db_name;"

if [ $? -ne 0 ]; then
    echo "failed to drop db..."
    exit 1
fi

echo "db dropped!"

echo "create db: '$db_name'"
sudo mysql -u "$db_user" -p -e "CREATE DATABASE $db_name;"

if [ $? -ne 0 ]; then
    echo "failed to create db..."
    exit 1
fi

echo "restore db from backup..."
sudo mysql -u "$db_user" -p "$db_name" < "$backup_path"

if [ $? -ne 0 ]; then
    echo "restore failed..."
    exit 1
fi

echo "check tables in '$db_name'..."
sudo mysql -u "$db_user" -p -e "USE $db_name; SHOW TABLES;"

echo "FINISHED!"

