#!/bin/bash

## Lamp

sudo apt-get install -y apache2 php5 mysql-server libapache2-mod-php5 php5-mysql

cd /var/www

user=`whoami`

sudo chown $user:$user html
