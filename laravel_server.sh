sudo apt-get update

sudo apt-get install php7.0-mbstring php7.0-xml composer unzip

# Find msql password in /root/.digitalocean_password
# 
# This is root of default mysql password
vim /root/.digitalocean_password

# Performe manual steps when prompted (find mysql password)
# Find way to copy first line and paste in when prompted

mysql -u root -p

# Insert found password

# MYSQL > START
# When password is accepted
# Consider allowing name of database to be passed in as argument

CREATE DATABASE laravel DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

# Consider alloweing username and password to be set by argument

GRANT ALL ON laravel.* TO 'laraveluser'@'localhost' IDENTIFIED BY 'password';

FLUSH PRIVILEGES;

EXIT;

# MYSQL > END

# Consider having name of folder to be passed as argument (or just default)

sudo mkdir -p /var/www/html/laravel

cd /var/www/html/laravel

# MUST have git repository passed in as argument. Default for now.

git clone https://github.com/danlafram/ar-test .

# Git cloning...

composer install

# composer installing... 

# Configure .env file
# Consider having .env file editor interface
# Configuring .env file....

# Run migration

php artisan migrate

yes

# Consider echo-ing result of migration command so user can see what's happening





