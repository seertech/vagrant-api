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

