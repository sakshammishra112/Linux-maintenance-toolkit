# 🛠️ Linux Maintenance Toolkit

A modular **Bash toolkit** to perform essential Linux system maintenance tasks.  
Designed for system administrators, hobbyists, and developers who want practical control over their Linux environment.

---

## 📦 Features

- ✅ Monitor disk usage and get warnings when space is low  
- 🔁 Automatically update system packages (`apt`, `yum`, `dnf`)  
- 👤 Add new users and assign `sudo` privileges  
- ❌ Kill unwanted or hanging processes  
- 📂 Backup any directory with timestamps  
- 🔐 Parse `/var/log/auth.log` for failed SSH login attempts  
- 📝 All actions are logged in the `logs/` directory

---

## 🗂️ Project Structure

```bash
linux-maintenance-toolkit/
├── toolkit.sh                # Main entry script (menu UI)
├── modules/                 # All feature modules live here
│   ├── disk_monitor.sh
│   ├── update_system.sh
│   ├── user_manager.sh
│   ├── process_killer.sh
│   ├── backup.sh
│   └── log_parser.sh
└── logs/                    # Action logs stored here
```

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/linux-maintenance-toolkit.git
cd linux-maintenance-toolkit
```

2. Make Scripts Executable
```bash
chmod +x toolkit.sh
chmod +x modules/*.sh
```

3. Run the Toolkit
```bash
./toolkit.sh
```

🧪 Toolkit Menu

====== Linux Maintenance Toolkit ======
1. Disk Usage Monitor
2. System Update
3. User Management
4. Process Killer
5. Backup Directory
6. Parse Logs
7. Exit
Choose an option [1-7]:








