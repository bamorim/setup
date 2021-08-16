# Dev Machine Setup

This repository contains my ansible tasks for setting up a new development
machine.

Dotfiles are managed by chezmoi and can be found on
[bamorim/dotfiles](https://github.com/bamorim/dotfiles)

## Setting up

There are still a few manual steps, but mostly:

- Install Ansible and zsh:
  - `sudo pacman -Syy`
  - `sudo pacman -S ansible zsh`
- Install ansible galaxy packages and run the playbook:
  - `./setup.sh`
- Signin to 1password-cli:
  - `eval $(op signin my.1password.com <EMAIL>)`
- Diff and apply dotfiles:
  - `chezmoi diff`
  - `chezmoi apply`