#!/bin/bash

THRESHOLD=80
usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

echo "Current disk usage: $usage%"
echo "[$(date)] Disk usage checked: $usage%" >> logs/disk_monitor.log
if [ "$usage" -gt "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is above ${THRESHOLD}%"
    echo "[$(date)] WARNING: Usage exceeded threshold of ${THRESHOLD}%" >> logs/disk_monitor.log
fi
