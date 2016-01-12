#!/bin/bash


if [ ! "${NVM_VERSION}" ];
then
    NVM_VERSION=master
fi

if [ ! "${NODE_VERSION}" ];
then
    NODE_VERSION="0.12.7"
fi

if [ ! "${NPM_VERSION}" ];
then
    NPM_VERSION="2.11.3"
fi

echo "Installing version ${NVM_VERSION} of nvm"
curl -s -o- https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash

source ~/.bashrc

echo "Installing version ${NODE_VERSION} of node"
nvm install ${NODE_VERSION}

echo "Setting default node for nvm"
nvm alias default 0.12.7

echo "Installing version ${NPM_VERSION} of npm"
npm -g install npm@${NPM_VERSION}

echo -n "nvm --version: "
nvm --version

echo -n "node --version: "
node --version

echo -n "npm --version: "
npm --version
