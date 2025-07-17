LOG_FILE=~/access.log

# Verify
if [ ! -f "$LOG_FILE" ]; then
    echo "Fisierul nu exista"
    exit 1
fi

echo "Se proceseaza $LOG_FILE"
