#!/bin/bash

## Fish

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install -y fish

cd ~/.config

if [  -d fish ]; then
	rm -rf fish
fi

echo "Retrieve fish config"
git clone https://gitlab.com/Sraleik/fishConfig.git fish
cd fish 
git checkout ubuntu
echo "fish config -> in ~/.config/fish"
echo "setting ubuntu branch"

echo "chsh pour la mise par défault"
chsh -s `which fish` #to make fish default shell

xmodmap -e "keycode 49 = Escape"

if [ ! -d ~/.config/autostart ]; then
	mkdir ~/.config/autostart
fi

if [ -f ~/.config/autostart/escape.desktop ]; then
	rm -f ~/.config/autostart/escape.desktop
fi

touch ~/.config/autostart/escape.desktop

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


