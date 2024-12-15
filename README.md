# AutoUpdate Script for Debian

This script automates the setup of unattended upgrades on **Debian** systems. It ensures that your system automatically applies critical security updates, reducing the need for manual maintenance.

---

## Features

- Automatically installs and configures `unattended-upgrades` and `apt-listchanges`.
- Configures repositories for automatic updates, including:
  - Security updates
  - Stable updates
  - Backports (optional)
- Modifies configuration files to customize update behavior.
- Performs a dry-run to validate the setup.

---

## Requirements

- Supported Operating Systems:
  - Debian 10 or newer
- User must have **sudo** privileges.

---

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/dkingcyber/Enable-Auto-Updates-Debian.git
   cd Enable-Auto-Updates-Debian

2. Make the script executable:
   ```bash
   chmod +x autoupdates.sh

3. Run the script:
   ```bash
   sudo ./autoupdate.sh

## Configuration Files Edited
- /etc/apt/apt.conf.d/50unattended-upgrades: Key lines are uncommented to enable updates for stable and security repositories.
- /etc/apt/apt.conf.d/20auto-upgrades: The default content is replaced with new settings for automated updates.