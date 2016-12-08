#!/bin/bash

echo "-------------"
echo "Create new user?(y/n)"
read new_user 

echo ""

if [ "$new_user" == "y" ]
then
  bash <(curl -s https://gitlab.com/Sraleik/work_station/raw/master/config_new_user.sh)
fi

echo "-------------"
echo "log as new user:"
read new_user_name 

sudo -u $new_user_name -H sh -c "whoami"
#mkdir -p Documents
#cd Documents

echo "-------------"
echo "update?(y/n)"
read update 

echo ""

if [ "$update" == "y" ]
then
  echo "upgrade ..."
  sudo apt-get update
fi

echo "-------------"
echo "upgrade?(y/n)"
read upgrade 

echo ""

if [ "$upgrade" == "y" ]
then
  echo "upgrade ..."
  sudo apt-get upgrade -y
fi

###### git install

echo "-------------"
echo "Install git?(y/n)"
read installgit

echo ""

if [ "$instalgit" == "y" ]
then
  sudo apt-get install git
fi

###### git install

echo "-------------"
echo "clone work_station?(y/n)"
read workstation

echo ""

if [ "$workstation" == "y" ]
then
  git clone https://gitlab.com/Sraleik/work_station.git
  cd work_station
fi


###### git config

echo "-------------"
echo "Config git?(y/n)"
read setgit

echo ""

if [ "$setgit" == "y" ]
then
  ./config_git.sh
fi


###### swapiness

echo "-------------"
echo "swapiness?(y/n)"
read swapiness

echo ""

if [ "$swapiness" == "y" ]
then
  ./config_swapiness.sh
fi


###### Fish

echo "-------------"
echo "Install fish?(y/n)"
read install_fish

echo ""

if [ "$install_fish" == "y" ]
then
  ./install_fish.sh
fi

###### Docker

echo "-------------"
echo "Install docker?(y/n)"
read install_docker

echo ""

if [ "$install_docker" == "y" ]
then
  ./install_docker.sh
fi
