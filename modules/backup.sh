#!/bin/bash

read -p "Enter directory to back up: " src
read -p "Enter destination path: " dest

timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="$dest/backup_$timestamp.tar.gz"
tar -czf "$backup_file" "$src"
echo "Backup created at $backup_file"
echo "[$(date)] Backup of $src created at $backup_file" >> logs/backup.log
