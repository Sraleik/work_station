#!/bin/bash

## Android

cd ~/Documents

wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz

tar -zxvf android-sdk_r*-linux.tgz

echo "export PATH=\${PATH}:$(pwd)" >> ~/.bashrc

cd ../platform-tools

echo "export PATH=\${PATH}:$(pwd)" >> ~/.bashrc

. ~/.bashrc
