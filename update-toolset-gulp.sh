#!/usr/bin/env bash

echo "Updating npm..."
npm install --global npm@latest

echo "Install Bower and Gulp"
npm install --global bower
npm install --global gulp

echo "Confirming installation"
bower --version && gulp --version
