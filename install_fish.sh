#!/bin/bash

## Fish
cd ~/.config
echo "Retrieve fish config"
git clone https://gitlab.com/Sraleik/fishConfig.git fish
cd fish 
git checkout ubuntu
echo "\teasystroke config -> in ~/.config/fish"
echo "\t\tsetting ubuntu branch"

sudo apt-get install -y fish 
