#!/bin/bash
sudo apt update
sudo apt install --no-install-recommends python3-dev python3-pip python3-setuptools python3-wheel build-essential
sudo -H pip3 install thefuck

###### Alias fish 

echo "-------------"
echo "Config alias on fish?(y/n)"
read alias_fish

echo ""

if [ "$alias_fish" == "y" ]
then
  echo "eval (thefuck --alias fuck | tr '\n' ';')" >> ~/.config/fish/config.fish
fi

###### Alias bash (doesn't work yet)

echo "-------------"
echo "Config alias on bash?(y/n)"
read alias_bash

echo ""

if [ "$alias_bash" == "y" ]
then
  echo "eval $(thefuck --alias)" >> ~/.bashrc
fi
