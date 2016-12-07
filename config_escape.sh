#!/bin/bash

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
X-GNOME-Autostart-Delay=30
EOF


