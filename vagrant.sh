#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs

sudo apt-get install -y git

sudo apt-get update
sudo apt-get install -y build-essential chrpath git-core libssl-dev libfontconfig1-dev
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 1.9
./build.sh

git clone git://github.com/n1k0/casperjs.git
cd casperjs
git checkout tags/1.0.2
ln -sf `pwd`/bin/casperjs /usr/local/bin/casperjs

npm install -g yo grunt-cli bower docpad express node-dev forever

sudo apt-get -y install tree



sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update
sudo apt-get install mongodb-10gen