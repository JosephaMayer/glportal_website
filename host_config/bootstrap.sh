#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 php5 php5-mcrypt
a2enmod rewrite
cp /vagrant/host_config/apache/default /etc/apache2/sites-available/default
rm -rf /var/www
ln -fs /vagrant /var/www
chmod -R 774 /var/www/app/storage
chgrp -R www-data /var/www/app/storage
service apache2 restart
