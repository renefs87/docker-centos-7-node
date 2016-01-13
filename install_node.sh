#!/bin/bash


wget http://nodejs.org/dist/v0.12.7/node-v0.12.7.tar.gz
tar xzvf node-v* && cd node-v*
./configure
make
sudo make install

echo -n "node --version: "
node --version

echo -n "npm --version: "
npm --version

sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
