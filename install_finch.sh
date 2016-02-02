#!/bin/bash

## Fish

sudo apt-get install finch

cd
mkdir .purple
cd .purple

git init
git remote add origin https://gitlab.com/Sraleik/finchConfig.git

git pull
git checkout master