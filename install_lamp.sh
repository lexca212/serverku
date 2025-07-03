#!/bin/bash

# Update dan upgrade sistem
sudo apt update && sudo apt upgrade -y

# Install Apache2
echo "Menginstal Apache2..."
sudo apt install apache2 -y

# Install MariaDB
echo "Menginstal MariaDB..."
sudo apt install mariadb-server mariadb-client -y

# Amankan MariaDB
echo "Mengamankan MariaDB..."
sudo mysql_secure_installation

# Tambahkan repositori PHP 8.0
echo "Menambahkan repositori PHP 8.0..."
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update

# Install PHP 8.0 dan ekstensi umum
echo "Menginstal PHP 8.0 dan ekstensi..."
sudo apt install php8.0 php8.0-cli php8.0-common php8.0-mysql php8.0-xml php8.0-mbstring php8.0-curl php8.0-zip libapache2-mod-php8.0 -y

# Restart Apache
echo "Restarting Apache..."
sudo systemctl restart apache2

# Enable services
sudo systemctl enable apache2
sudo systemctl enable mariadb

echo "Installasi selesai! Apache2, MariaDB, dan PHP 8.0 telah terpasang."
