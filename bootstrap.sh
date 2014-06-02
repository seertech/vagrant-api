#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

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
apt-get install python-software-properties
apt-get install software-properties-common
apt-add-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs
apt-get install -y npm

# Clone Factsviz in /vagrant -- still not working
# cd /vagrant
# git clone git@github.com:seertech/factsviz.git

# Install CURL
apt-get install -y curl


