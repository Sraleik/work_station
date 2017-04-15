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
echo "Log as new user:"
read new_user_name

sudo -u $new_user_name -H sh -c "cd ~ && mkdir -p Documents"

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

###### Git install

echo "-------------"
echo "Install git?(y/n)"
read installgit

echo ""

if [ "$installgit" == "y" ]
then
  sudo -u $new_user_name -H sh -c "sudo apt-get install git -y"
fi

###### Clone work_station

echo "-------------"
echo "Clone work_station?(y/n)"
read workstation

echo ""

if [ "$workstation" == "y" ]
then
  sudo -u $new_user_name -H sh -c "cd ~/Documents && git clone https://gitlab.com/Sraleik/work_station.git"
fi


###### Git config

echo "-------------"
echo "Config git?(y/n)"
read setgit

echo ""

if [ "$setgit" == "y" ]
then
  cd /home/$new_user_name
  sudo -u $new_user_name -H sh -c "~/Documents/work_station/config_git.sh"
  cd -
fi


###### Swapiness

echo "-------------"
echo "Swapiness?(y/n)"
read swapiness

echo ""

if [ "$swapiness" == "y" ]
then
  sudo -u $new_user_name -H sh -c "~/Documents/work_station/config_swapiness.sh"
fi


###### Fish

echo "-------------"
echo "Install fish?(y/n)"
read install_fish

echo ""

if [ "$install_fish" == "y" ]
then
  sudo -u $new_user_name -H sh -c "~/Documents/work_station/install_fish.sh"
fi

###### Docker

echo "-------------"
echo "Install docker?(y/n)"
read install_docker

echo ""

if [ "$install_docker" == "y" ]
then
  sudo -u $new_user_name -H sh -c "~/Documents/work_station/install_docker.sh"
fi

###### The Fuck 

echo "-------------"
echo "Install thefuck?(y/n)"
read install_thefuck

echo ""

if [ "$install_thefuck" == "y" ]
then
  sudo -u $new_user_name -H sh -c "~/Documents/work_station/install_fuck.sh"
fi

###### Nvim 

echo "-------------"
echo "Install Nvim?(y/n)"
read install_nvim

echo ""

if [ "$install_nvim" == "y" ]
then
  sudo -u $new_user_name -H sh -c "~/Documents/work_station/install_nvim.sh"
fi

###### Hostname 

echo "-------------"
echo "Config Hostname?(y/n)"
read config_Hostname

echo ""

if [ "$config_Hostname" == "y" ]
then
  sudo -u $new_user_name -H sh -c "~/Documents/work_station/config_hostname.sh"
fi
