#!/bin/bash

echo "Parsing /var/log/auth.log for failed login attempts..."
echo "[$(date)] Log parser run by $(whoami)" >> logs/log_parser.log
sudo grep "Failed password" /var/log/auth.log | tail -n 10 >> logs/log_parser.log
sudo grep "Failed password" /var/log/auth.log | tail -n 10
