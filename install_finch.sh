#!/bin/bash

## Finch

sudo apt-get install finch xmlstarlet

echo "-------------"
echo "Config finch?(y/n)"
read config_finch 

echo ""

if [ "$config_finch" == "y" ]
then
  cd
  git clone https://gitlab.com/Sraleik/finchConfig.git .purple
  cd -
fi

echo "-------------"
echo "Set notification?(y/n)"
read set_notif

echo ""

if [ "$set_notif" == "y" ]
then
  user=`whoami`
  xmlstarlet edit -L -u "/pref[@version='1']/pref[@name='finch']/pref[@name='sound']/pref[@name='profiles']/pref[@name='default']/pref[@name='command']/@value" -v "/home/$user/.purple/notification.sh" prefs.xml
fi

