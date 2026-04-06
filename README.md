# dotfiles

The dotfiles for my installation of [Arch Linux on WSL](https://wiki.archlinux.org/title/Install_Arch_Linux_on_WSL), managed using [chezmoi](https://www.chezmoi.io/) and [Ansible](https://github.com/ansible/ansible).

## Installation

> [!WARNING]
> This installation process is only configured to work properly on systems using Arch Linux.

Run the following in your terminal:

```sh
GITHUB_USERNAME=kirjahlol
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```
