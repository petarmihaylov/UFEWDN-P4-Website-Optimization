#!/usr/bin/env bash

echo "Updating npm..."
npm install --global npm@latest

echo "Install Yeoman toolbelt dependencies"
npm install --global yo
npm install --global bower
npm install --global grunt-cli

echo "Confirming installation"
yo --version && bower --version && grunt --version
