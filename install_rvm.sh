#!/bin/bash

## Lamp

#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

sudo apt-get install -y curl

\curl -sSL https://get.rvm.io | bash -s stable --ruby

#config fish
curl -L --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish

echo "rvm default" >> ~/.config/fish/config.fish

