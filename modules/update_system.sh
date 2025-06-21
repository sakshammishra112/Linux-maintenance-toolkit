#!/bin/bash

echo "Updating system packages..."
if command -v apt > /dev/null; then
    sudo apt update && sudo apt upgrade -y
    echo "[$(date)] System updated using apt" >> logs/update_system.log
elif command -v yum > /dev/null; then
    sudo yum update -y
    echo "[$(date)] System updated using yum" >> logs/update_system.log
elif command -v dnf > /dev/null; then
    sudo dnf upgrade --refresh -y
    echo "[$(date)] System updated using dnf" >> logs/update_system.log
else
    echo "Unsupported package manager."
    echo "[$(date)] ERROR: Unsupported package manager" >> logs/update_system.log
fi
