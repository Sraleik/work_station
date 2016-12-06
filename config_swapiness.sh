#!/bin/bash

## Swapiness

sudo sysctl vm.swappiness=10

sudo swapoff -av

sudo swapon -av

echo vm.swappiness=10 | sudo tee -a /etc/sysctl.conf
