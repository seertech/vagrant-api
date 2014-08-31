#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Install Apache2
apt-get -y install apache2

if [ ! -h /var/www ]; 
then 

    rm -rf /var/www sudo 
    ln -s /vagrant/public /var/www

    a2enmod rewrite

    sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default

    service apache2 restart
fi

# Install MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update
apt-get -y install mongodb-org
# Start MongoDB
/etc/init.d/mongod start

# Install Git
apt-get install -y git-core

# Install Python 3.2
apt-get install -y python3

# Install node.js
apt-get install -y python-software-properties
apt-get install -y software-properties-common
apt-add-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs

# Install express and express-generator
npm install -g express
npm install -g express-generator

# Install CURL
apt-get install -y curl



