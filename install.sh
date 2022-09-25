#!/usr/bin/env bash
if [ "$1" ]
then
      echo "Running install playbook with tags: $1"
      ansible-playbook install.yml --ask-become-pass --tags "$1"
elif [ -z "$DISPLAY" ]
then
      echo "GUI not found. Only installing CLI tools"
      ansible-playbook install.yml --ask-become-pass --tags "cli"
else
      echo "GUI found. Installing everything"
      ansible-playbook install.yml --ask-become-pass --tags
fi