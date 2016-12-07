#!/bin/bash

sudo apt-get update
sudo apt-get install git

echo "Config sraleik as git user?(y/n)"
read config_git 

echo ""

if [ "$config_git" == "y" ]
then
  git clone https://gitlab.com/Sraleik/work_station.git
  cd work_station
  
  echo "config git ..."
  ./config_git.sh
fi
