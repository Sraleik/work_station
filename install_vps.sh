#!/bin/bash

sudo apt-get update

echo "upgrade?(y/n)"
read user

echo ""

if [ ${upgrade} = 'install' ]
then
  sudo apt-get upgrade -y
fi

## swapiness
./config_swapiness.sh

## git
./config_git.sh

## Fish
./install_fish.sh
