#!/bin/bash

while true; do
    echo "====== Linux Maintenance Toolkit ======"
    echo "1. Disk Usage Monitor"
    echo "2. System Update"
    echo "3. User Management"
    echo "4. Process Killer"
    echo "5. Backup Directory"
    echo "6. Parse Logs"
    echo "7. Exit"
    read -p "Choose an option [1-7]: " choice

    case $choice in
        1) bash modules/disk_monitor.sh ;;
        2) bash modules/update_system.sh ;;
        3) bash modules/user_manager.sh ;;
        4) bash modules/process_killer.sh ;;
        5) bash modules/backup.sh ;;
        6) bash modules/log_parser.sh ;;
        7) exit 0 ;;
        *) echo "Invalid option." ;;
    esac
    echo ""
    read -p "Press Enter to continue..."
done
