#!/bin/bash

echo "Running processes:"
ps aux | less
read -p "Enter PID to kill: " pid
sudo kill "$pid"
echo "Process $pid killed."
echo "[$(date)] Process $pid killed by user $(whoami)" >> logs/process_killer.log
