#!/bin/bash

os="$(uname -s)"
case "$os" in
  Linux*)
    if [ -f /etc/arch-release ]; then
      sudo pacman -S --needed ansible
    else
      echo "Unsupported Linux distribution"
      exit 1
    fi
    ;;
  *)
    echo "Unsupported operating system"
    exit 1
    ;;
esac

echo "Ansible installation done"

ansible-playbook ~/ansible/setup.yml --ask-become-pass
