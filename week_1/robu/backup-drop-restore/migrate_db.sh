#!/bin/bash

DB_NAME="magazinRS"
BACKUP_FILE="magazinRS_backup.sql"
MYSQL_USER="stefan"
MYSQL_PASS="oradea22"

echo "Checking if database '$DB_NAME' exists..."
if mysql -u $MYSQL_USER -p$MYSQL_PASS -e "USE $DB_NAME;" 2>/dev/null; then
    echo "Backing up existing database..."
    mysqldump -u $MYSQL_USER -p$MYSQL_PASS $DB_NAME > $BACKUP_FILE
else
    echo "Database does not exist, skipping backup..."
fi

echo "Dropping database (if it exists)..."
mysql -u $MYSQL_USER -p$MYSQL_PASS -e "DROP DATABASE  $DB_NAME;"

echo "Creating database..."
mysql -u $MYSQL_USER -p$MYSQL_PASS -e "CREATE DATABASE $DB_NAME;"

echo "Restoring database from backup..."
if [ -f "$BACKUP_FILE" ]; then
    mysql -u $MYSQL_USER -p$MYSQL_PASS $DB_NAME < $BACKUP_FILE
    echo "Restore complete."
else
    echo "No backup file found. Restore skipped."
fi

echo "Verifying tables in $DB_NAME..."
mysql -u $MYSQL_USER -p$MYSQL_PASS -e "USE $DB_NAME; SHOW TABLES;"
