#!/bin/bash

sudo apt-get update

echo "upgrade?(y/n)"
read user

echo ""

if [ "$upgrade" = "y" ]
then
  sudo apt-get upgrade -y
fi

###### swapiness

echo "swapiness?(y/n)"
read swapiness

echo ""

if [ "$swapiness" = "y" ]
then
  ./config_swapiness.sh
fi

###### git

echo "Config git?(y/n)"
read setgit

echo ""

if [ "$setgit" = "y" ]
then
  ./config_git.sh
fi

###### Fish

echo "Install fish?(y/n)"
read install_fish

echo ""

if [ "$install_fish" = "y" ]
then
  ./install_fish.sh
fi

###### Docker

echo "Install docker?(y/n)"
read install_docker

echo ""

if [ "$install_docker" = "y" ]
then
  ./install_docker.sh
fi
