#!/bin/bash

## Fish

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install -y fish

mkdir -p ~/.config
cd ~/.config

if [ -d fish ]; then
	rm -rf fish
fi

echo "Retrieve fish config"
git clone https://gitlab.com/Sraleik/fishConfig.git fish
cd fish
git checkout master
echo "fish config -> in ~/.config/fish"
echo "setting ubuntu branch"

echo "chsh pour la mise par défault"
chsh -s `which fish` #to make fish default shell
