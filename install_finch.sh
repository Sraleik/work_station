#!/bin/bash

## Finch

sudo apt-get install finch 

echo "-------------"
echo "Config finch?(y/n)"
read config_finch 

echo ""

if [ "$config_finch" == "y" ]
then
  cd
  git clone https://gitlab.com/Sraleik/finchConfig.git .purple
  cd .purple
  
  echo "-------------"
  echo "Your Gmail"
  read finch_gmail 

  echo ""

  echo "-------------"
  echo "Your Gmail Password"
  read finch_gmail_password

  echo ""
  sed -i 's/%EMAIL%/"$finch_gmail"/g' accounts.xml
  sed -i 's/%PASSWORD%/"$finch_gmail_password"/g' accounts.xml
  cd -
fi

echo "-------------"
echo "Set notification?(y/n)"
read set_notif

echo ""

if [ "$set_notif" == "y" ]
then
  cd ~/.purple
  sed -i 's/%PATH_TO_NOTIF_SCRIPT%/"$finch_gmail"/g' prefs.xml
  xmlstarlet edit -L -u "/pref[@version='1']/pref[@name='finch']/pref[@name='sound']/pref[@name='profiles']/pref[@name='default']/pref[@name='command']/@value" -v "`pwd`/notification.sh" prefs.xml
  cd -
fi

