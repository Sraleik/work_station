#!/bin/bash
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools build-essential
sudo -H pip3 install thefuck

install

###### The Fuck 

echo "-------------"
echo "Config alias on fish?(y/n)"
read alias_fish

echo ""

if [ "$alias_fish" == "y" ]
then
  echo "eval (thefuck --alias fuck | tr '\n' ';')" >> ~/.config/fish/config.fish
fi

