#!/bin/bash
sudo apt update
sudo apt install python3-dev python3-pip
sudo -H pip3 install thefuck

echo "eval (thefuck --alias fuck | tr '\n' ';')" >> ~/.config/fish/config.fish
