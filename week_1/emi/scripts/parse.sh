#!/bin/bash

logfile="$1"
count_404=$(grep -c "404" "$logfile")

ip="172.16.0.10"

ip_count=$(grep -c "$ip" "$logfile")

ip_most_requests=$(awk '{print $1}' "$logfile" | sort | uniq -c | sort -nr | head -1 | awk '{print $2}')

echo "Number of 404 logs: $count_404"
echo "Number of requests from IP $ip: $ip_count"
echo "Ip with most requests: $ip_most_requests"
