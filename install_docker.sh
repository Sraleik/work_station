#!/bin/bash

curl -fsSL https://test.docker.com/ | sh

sudo groupadd docker
sudo usermod -aG docker $USER 
sudo service docker restart
