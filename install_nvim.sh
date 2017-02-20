#!/bin/bash

## Nvim

sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get update

sudo apt-get install neovim

###### nvim config

echo "-------------"
echo "Config nvim?(y/n)"
read setnvim

echo ""

if [ "$setnvim" == "y" ]
then
  cd ~/.config
  git clone https://gitlab.com/Sraleik/nvimConfig.git nvim
  cd nvim
  git checkout v2
fi
