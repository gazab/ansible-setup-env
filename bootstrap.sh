#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install git -y

sudo apt-get install pipx -y

sudo apt-get install ansible -y
ansible-galaxy install -r requirements.yml