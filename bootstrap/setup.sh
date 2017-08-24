#!/bin/bash 

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y php php7.0-fpm nginx letsencrypt zip unzip php-xml

cd ~
sudo curl -sS https://getcomposer.org/installer | sudo php
sudo mv composer.phar /usr/local/bin/composer
sudo ln -s /usr/local/bin/composer /usr/bin/composer
sudo php -i '--enable-xmlreader=shared' '--enable-xmlwriter=shared'

cd /usr/share/nginx/html
sudo mkdir sites
cd sites
sudo mkdir slayonmakeover.com
sudo git clone https://github.com/barisi/barisi.git

cd /etc/ssl/certs
sudo openssl dhparam -out dhparam.pem 4096