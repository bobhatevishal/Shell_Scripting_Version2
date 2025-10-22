# =============================================================================>
#                    Script Name   : create_mysql_db.sh                           >
#                    Version       : 1.0                                         >
#                    Author        : Vishal Bobhate                              >
#                    Created on    : 22-Oct-2025                                 >
#                    Purpose       : Create MySQL database and user              >
###############################################################################>

#!/bin/bash

# Prompt for inputs
read -p "Enter MySQL root password: " ROOT_PASS
read -p "Enter new database name: " DB_NAME
read -p "Enter new username: " DB_USER
read -p "Enter password for new user: " DB_PASS

mysql -u root -p"$ROOT_PASS" -e "
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
"

if [ $? -eq 0 ]; then
    echo " Database '$DB_NAME' and user '$DB_USER' created successfully."
else
    echo " Failed to create database or user."
fi
