#!/bin/bash

LOG_FILE="$1"
IP_FILTER="$2"
DATE_FILTER="$3"

if [[ ! -f "$LOG_FILE" ]]; then
  echo "Usage: $0 log_file [ip] [date]"
  exit 1
fi

echo "Number of ERROR logs:"
grep -i error "$LOG_FILE" | wc -l

if [[ -n "$IP_FILTER" ]]; then
  echo "Number of requests from IP $IP_FILTER:"
  grep -c "^$IP_FILTER" "$LOG_FILE"
fi

if [[ -n "$DATE_FILTER" ]]; then
  echo "Most requested URL on $DATE_FILTER:"
  grep "$DATE_FILTER" "$LOG_FILE" | awk '{print $7}' | sort | uniq -c | sort -nr | head -n 1
else
  echo "Most requested URL overall:"
  awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1
fi

