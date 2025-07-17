#!/bin/bash

DB_NAME="ecommerce_shop"
DB_USER="student"
DUMP_FILE="backup.sql"

# 1. Backup
echo "Backing up database..."
mysqldump -u $DB_USER -p $DB_NAME > $DUMP_FILE

# 2. Drop
echo "Dropping database..."
mysql -u $DB_USER -p -e "DROP DATABASE IF EXISTS $DB_NAME;"

# 3. Restore
echo "Restoring database..."
mysql -u $DB_USER -p < $DUMP_FILE

echo "✅ Backup and restore completed"

