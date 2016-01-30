#!/bin/bash

## Sublime

sudo add-apt-repository ppa:webupd8team/sublime-text-3 
sudo apt-get update 
sudo apt-get install -y sublime-text

cd ~/.config
mkdir sublime-text-3
cd sublime-text-3

git init
git remote add origin https://gitlab.com/Sraleik/sublime3Config.git

git pull
git checkout master

