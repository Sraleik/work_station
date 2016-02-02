#!/bin/bash

## Fish

sudo apt-get install finch xmlstarlet

cd
mkdir .purple
cd .purple

git init
git remote add origin https://gitlab.com/Sraleik/finchConfig.git

git pull
git checkout master

user=`whoami`

xmlstarlet edit -L -u "/pref[@version='1']/pref[@name='finch']/pref[@name='sound']/pref[@name='profiles']/pref[@name='default']/pref[@name='command']/@value" -v "/home/$user/.purple/notification.sh" prefs.xml
