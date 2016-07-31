#!/bin/bash

sudo apt-get install -y zip unzip
sudo apt-get install php-xml
sudo git clone https://barisi@bitbucket.org/velik/velik-core-api.git
cd velik-core-api/
sudo apt-get install php-xml
sudo php -i '--enable-xmlreader=shared' '--enable-xmlwriter=shared'
sudo composer update