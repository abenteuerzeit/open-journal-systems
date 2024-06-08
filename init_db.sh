#!/bin/bash

# # Kill any existing MySQL processes
# pkill mysqld

# # Initialize MySQL data directory
# /nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/bin/mysql_install_db --datadir='./mysql_data' --user=runner

# Stop MySQL if it's running
sudo pkill mysqld

# Run mysql_upgrade
sudo /nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/bin/mysql_upgrade -u root --socket=./mysql_data/mysql.sock


# Start MySQL server
/nix/store/83vs3hbhf61w6azvp6jkllvsmhwhikxf-mariadb-server-10.6.10/bin/mysqld_safe --datadir='./mysql_data' &

# Wait for MySQL server to start
sleep 5

# Set up MySQL root user and create database
# Connect to MySQL using Unix socket
mysql -u root --socket=./mysql_data/mysql.sock <<EOF
CREATE DATABASE IF NOT EXISTS mydatabase;
GRANT ALL PRIVILEGES ON mydatabase.* TO 'root'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
EOF
