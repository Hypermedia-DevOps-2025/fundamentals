LOG_FILE=~/access.log

# Verify
if [ ! -f "$LOG_FILE" ]; then
    echo "Fisierul nu exista"
    exit 1
fi

echo "Se proceseaza $LOG_FILE"
echo
echo "Analiza fisier: $LOG_FILE"
echo

# 1. Nr de erori
ERROR_COUNT=$(grep -ci "error" "$LOG_FILE")
echo "Nr de erori: $ERROR_COUNT"

# 2. Cereri de la 192.168.1.100
REQUESTS=$(grep -c "192.168.1.100" "$LOG_FILE")
echo "Cereri de la 192.168.1.100: $REQUESTS"

# 3. Cel mai cerut URL
TOP_URL=$(awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1)
echo "Cel mai cerut URL: $TOP_URL"
