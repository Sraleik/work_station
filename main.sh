#!/bin/bash

echo "Installation of numlockx"
sudo apt-get install -y numlockx 
echo "\tnumlocks -> done"

## Easystroke
./install_easystroke.sh

## Fish
./install_fish.sh

## Lamp
./install_lamp.sh

## terminator
./install_terminator.sh

## sublime
./install_sublime.sh
 
## swapiness
./config_swapiness.sh
 
