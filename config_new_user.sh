#!/bin/bash

echo "======Config main user======"
echo ""
echo "Main user:"
read user

echo ""
echo "======Creating user $user======"
echo ""
sudo adduser $user

###### is root? 

echo ""
echo "Is root?(y/n)"
read is_root 
echo ""

if [ "$is_root" == "y" ]
then
    sudo adduser $user sudo 
fi
