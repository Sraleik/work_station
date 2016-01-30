#!/bin/bash

## Fish

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install -y fish

cd ~/.config
rm -rf fish

echo "Retrieve fish config"
git clone https://gitlab.com/Sraleik/fishConfig.git fish
cd fish 
git checkout ubuntu
echo "easystroke config -> in ~/.config/fish"
echo "setting ubuntu branch"

chsh -s `which fish` #to make fish default shell





