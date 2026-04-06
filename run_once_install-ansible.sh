#!/bin/bash

os="$(uname -s)"
case "$os" in
  Linux*)
    if [ -f /etc/arch-release ]; then
      "Installing Ansible..."
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

echo "Running setup playbook..."
ansible-playbook ~/ansible/setup.yml --ask-become-pass
