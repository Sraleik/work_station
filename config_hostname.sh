#!/bin/bash

echo "-------------"
echo "are you configuring an ovh vps?(y/n)"
read ovh_vps

echo ""

if [ "$ovh_vps" == "y" ]
then
  sudo sed -i 's/preserve_hostname: false/preserve_hostname: true/g' /etc/cloud/cloud.cfg
  sudo echo "manage_etc_hosts" >> /etc/cloud/cloud.cfg
fi

echo "-------------"
echo "give your new hostname:"
read new_hostname

echo ""

sudo cp /etc/hostname /etc/hostname.old
sudo echo "$new_hostname" > /etc/hostname

old_hostname=`cat /etc/hostname.old`

sudo sed -i 's/'"$old_hostname"'/'"$new_hostname"'/g' /etc/hosts 
