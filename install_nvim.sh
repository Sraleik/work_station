#!/bin/bash

## Nvim

sudo add-apt-repository ppa:neovim-ppa/stable -y

sudo apt-get update

sudo apt-get install neovim -y

###### nvim config

echo "-------------"
echo "Config nvim?(y/n)"
read setnvim

echo ""

if [ "$setnvim" == "y" ]
then
  cd ~/.config
  git clone https://gitlab.com/Sraleik/nvim_config.git nvim
fi
