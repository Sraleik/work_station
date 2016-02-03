#!/bin/bash
#sudo apt-get update
#udo apt-get upgrade -y

echo "Installation of numlockx"
sudo apt-get install -y numlockx 
echo "\tnumlocks -> done"

## swapiness
./config_swapiness.sh

## git
./config_git.sh

## Easystroke
./install_easystroke.sh

## Fish
./install_fish.sh

## terminator
./install_terminator.sh

## sublime
./install_sublime.sh

## Lamp
./install_lamp.sh
 
## Finch
./install_finch.sh

## phpmyadmin
./install_phpmyadmin.sh

## rvm
./install_rvm.sh
