#!/bin/bash

set -e

# 1. Update packages and install Apache, PHP and MySQL
export DEBIAN_FRONTEND=noninteractive

apt-get update -y

apt-get install -y \
  apache2 \
  mysql-server \
  php \
  libapache2-mod-php \
  php-mysql \
  php-curl \
  php-gd \
  php-mbstring \
  php-xml \
  php-zip \
  wget \
  tar

# 2. Start Apache and MySQL
systemctl enable --now apache2
systemctl enable --now mysql

# 3. Generate a password for the WordPress database
DB_PASSWORD=$(openssl rand -hex 16)

# 4. Create the WordPress database and user
mysql <<EOF
CREATE DATABASE wordpress_db;
CREATE USER 'wp_user'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wp_user'@'localhost';
EOF

# 5. Download and extract WordPress
cd /tmp

wget -q https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# 6. Remove the default Apache homepage
rm -f /var/www/html/index.html

# 7. Copy WordPress into Apache's website directory
cp -r wordpress/. /var/www/html/

# 8. Configure WordPress database connection
cd /var/www/html

cp wp-config-sample.php wp-config.php

sed -i "s/database_name_here/wordpress_db/" wp-config.php
sed -i "s/username_here/wp_user/" wp-config.php
sed -i "s/password_here/${DB_PASSWORD}/" wp-config.php

# 9. Set file ownership and permissions
chown -R www-data:www-data /var/www/html
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

# 10. Restart Apache
systemctl restart apache2
