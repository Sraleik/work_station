#!/bin/bash

## Swapiness

echo vm.swappiness=10 | sudo tee -a /etc/sysctl.conf
