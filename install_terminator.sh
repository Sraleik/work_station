#!/bin/bash

## Terminator

sudo apt-get install -y fonts-inconsolata python-keybinder terminator
  
cd ~/.config

rm -rf terminator

git clone https://gitlab.com/Sraleik/terminatorConfig.git terminator

cd terminator
git checkout perso

gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/terminator
