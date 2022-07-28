#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install git -y

sudo apt-get install pipx -y

python3 -m pip install --user ansible
ansible-galaxy install -r requirements.yml
