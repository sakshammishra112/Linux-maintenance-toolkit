#!/bin/bash

read -p "Enter username to create: " username
read -p "Enter default password: " password

if id "$username" &>/dev/null; then
    echo "User $username already exists."
    echo "[$(date)] INFO: Attempted to create existing user $username" >> logs/user_manager.log
else
    sudo useradd -m -s /bin/bash "$username"
    echo "$username:$password" | sudo chpasswd
    sudo usermod -aG sudo "$username"
    echo "User $username created and added to sudo group."
    echo "[$(date)] User $username created with sudo access" >> logs/user_manager.log
fi 
