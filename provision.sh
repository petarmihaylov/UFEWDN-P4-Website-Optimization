#!/usr/bin/env bash

echo "Self update apt-get"
apt-get update

echo "Cleaning up"
apt-get autoremove -assume-y

echo "Installing curl"
apt-get install --assume-y curl

echo "Installing node and npm"
# Provides add-apt-repository (including for Ubuntu 12.10)
apt-get install --assume-yes python-software-properties
apt-get install --assume-yes software-properties-common

# Needed for nodejs.
curl -sL https://deb.nodesource.com/setup_5.x | bash -

# install required packages
echo "Installing Node.js..."
apt-get install --assume-yes nodejs
apt-get clean
# nodejs above includes npm --- apt-get install -y npm

echo "Checking Node.js and NPM versions"
node --version && npm --version

echo "Updating NPM"
npm install --global npm@latest

echo "Install Yeoman toolbelt dependencies"
npm install --global yo
npm install --global bower
npm install --global grunt-cli

echo "Confirming installation"
yo --version && bower --version && grunt --version


