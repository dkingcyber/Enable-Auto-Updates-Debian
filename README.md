# AutoUpdate Script for Debian

This script automates the setup of unattended upgrades on **Debian** systems. It ensures that your system automatically applies critical security updates, reducing the need for manual maintenance.

---

## Features

- Automatically installs and configures `unattended-upgrades` and `apt-listchanges`.
- Configures repositories for automatic updates, including:
  - Security updates
  - Stable updates
  - Backports (optional)
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
   git clone https://github.com/<your-username>/<your-repository-name>.git
   cd <your-repository-name>

2. Make the script executable:
   ```bash
   chmod +x autoupdate.sh

3. Run the script:
   ```bash
   sudo ./autoupdate.sh