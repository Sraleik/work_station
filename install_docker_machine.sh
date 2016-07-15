#!/bin/bash

curl -L https://github.com/docker/machine/releases/download/v0.8.0-rc2/docker-machine-`uname -s`-`uname -m` > docker-machine 
chmod +x docker-machine
sudo mv docker-machine /usr/local/bin/docker-machine

