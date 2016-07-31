#!/bin/bash 

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y php php7.0-fpm nginx
sudo apt-get install -y letsencrypt 

cd ~
sudo curl -sS https://getcomposer.org/installer | sudo php
sudo mv composer.phar /usr/local/bin/composer
sudo ln -s /usr/local/bin/composer /usr/bin/composer

sudo apt-get install -y zip unzip
sudo apt-get install -y php-xml
cd /usr/share/nginx/html
sudo mkdir sites
cd sites

sudo apt-get install -y php-xml
sudo php -i '--enable-xmlreader=shared' '--enable-xmlwriter=shared'


cd /etc/ssl/certs
sudo openssl dhparam -out dhparam.pem 4096