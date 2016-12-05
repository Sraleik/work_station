#!/bin/bash

echo "======Config main user======"
echo ""
echo "Main user:"
read user

echo ""
echo "======Creating user $user======"
echo ""

sudo adduser $user

sudo adduser $user root
