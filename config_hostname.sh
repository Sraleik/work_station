#!/bin/bash

echo "-------------"
echo "are you configuring an ovh vps?(y/n)"
read ovh_vps

echo ""

if [ "$ovh_vps" == "y" ]
then
  sudo cp /etc/cloud/cloud.cfg /etc/cloud/cloud.cfg.old
  sudo sed -i 's/preserve_hostname: false/preserve_hostname: true/g' /etc/cloud/cloud.cfg
  echo "manage_etc_hosts: false" | sudo tee --append /etc/cloud/cloud.cfg > /dev/null
fi

echo "-------------"
echo "give your new hostname:"
read new_hostname

echo ""

sudo cp /etc/hostname /etc/hostname.old
echo "$new_hostname" | sudo tee /etc/hostname > /dev/null

old_hostname=`cat /etc/hostname.old`

sudo cp /etc/hosts /etc/hosts.old
sudo sed -i 's/'"$old_hostname"'&/'"$new_hostname"'/g' /etc/hosts 

echo "------reboot is needed for change to take effect-------"
echo "reboot?(y/n)"
read reboot

echo ""

if [ "$reboot" == "y" ]
then
  sudo reboot
fi
