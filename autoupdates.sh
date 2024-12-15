#!/bin/bash

# Step 1: Update and upgrade system packages
echo "Updating and upgrading system packages..."
sudo apt update -y && sudo apt upgrade -y

# Step 2: Install unattended-upgrades and apt-listchanges
echo "Installing unattended-upgrades and apt-listchanges..."
sudo apt install unattended-upgrades apt-listchanges -y

# Step 3: Enable unattended-upgrades programmatically
echo "Enabling unattended-upgrades..."
sudo bash -c 'cat > /etc/apt/apt.conf.d/20auto-upgrades' <<EOL
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::AutocleanInterval "7";
APT::Periodic::Unattended-Upgrade "1";
EOL

# Step 4: Modify /etc/apt/apt.conf.d/50unattended-upgrades
echo "Modifying /etc/apt/apt.conf.d/50unattended-upgrades..."
sudo sed -i '/\/\/      "origin=Debian,codename=${distro_codename}-updates";/s/^\/\///' /etc/apt/apt.conf.d/50unattended-upgrades
sudo sed -i '/\/\/      "origin=Debian,codename=${distro_codename}-proposed-updates";/s/^\/\///' /etc/apt/apt.conf.d/50unattended-upgrades
sudo sed -i '/\/\/      "o=Debian,a=stable";/s/^\/\///' /etc/apt/apt.conf.d/50unattended-upgrades
sudo sed -i '/\/\/      "o=Debian,a=stable-updates";/s/^\/\///' /etc/apt/apt.conf.d/50unattended-upgrades

# Step 5: Perform a dry-run to verify configuration
echo "Testing unattended-upgrades configuration with a dry run..."
sudo unattended-upgrades --dry-run

echo "Setup complete. Please review the output of the dry run to verify the configuration."