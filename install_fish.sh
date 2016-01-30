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

xmodmap -e "keycode 49 = Escape"

rm -f ~/.config/autostart/escape.desktop

cat << EOF >> ~/.config/autostart/escape.desktop
[Desktop Entry]
Type=Application
Exec=~/.config/fish/escape.sh
X-GNOME-Autostart-enabled=true
NoDisplay=false
Hidden=false
Name[fr_FR]=escape
Comment[fr_FR]=la touche mini 2 devient echap
X-GNOME-Autostart-Delay=5
EOF


