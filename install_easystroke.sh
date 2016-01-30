#!/bin/bash

## Easystroke

sudo apt-get install -y xclip easystroke
  
cd ~ #TODO verifier que .easystroke n'existe pas

rm -rf .easystroke

echo "Retrieve easystroke config"
git clone https://gitlab.com/Sraleik/easystrokeConfig.git .easystroke
echo "easystroke config -> in ~/.easystroke"

echo "easystroke launch at start"
rm -f ~/.config/autostart/easystroke.desktop

cat << EOF >> ~/.config/autostart/easystroke.desktop
[Desktop Entry]
Type=Application
Exec=easystroke
Name=Easystroke
Comment=Gestuelle souris
EOF
