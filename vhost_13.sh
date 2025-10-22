# =============================================================================>
#                    Script Name   : create_vhost.sh                             >
#                    Version       : 1.0                                        >
#                    Author        : Vishal Bobhate                             >
#                    Created on    : 22-Oct-2025                                >
#                    Purpose       : Create an Apache virtual host for a domain >
###############################################################################>

#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo " Error: Please run as root."
fi
read -p "Enter domain name: " DOMAIN

if [ "$DOMAIN" ]; then
    echo "Error: No domain provided." 
fi

dir="/var/www/$DOMAIN"
CONF="/etc/httpd/conf.d/$DOMAIN.conf"

mkdir -p "$dir" || { echo "Failed to create directory '$dir'"; }

echo "$DOMAIN is live" > "$dir/index.html"

cat > "$CONF" <<EOF
<VirtualHost *:80>
    ServerName $DOMAIN
    DocumentRoot $dir
</VirtualHost>
EOF

echo " Virtual host for '$DOMAIN' created successfully."
