# Dev Machine Setup

This repository contains my ansible tasks for setting up a new development
machine.

Dotfiles are managed by chezmoi and can be found on [bamorim/dotfiles]

GPG Keys are stored in [1Password].

## Setting up

There are still a few manual steps, but mostly:

- Install Ansible and zsh:
  - `sudo pacman -Syy`
  - `sudo pacman -S ansible zsh`
- Install ansible galaxy packages:
  - `ansible-galaxy install kewlfft.aur` 
- Run the main playbook:
  - `ansible-playbook main.yaml -K`
- Login to [1Password CLI] with `eval $(op login)`
  - If it is the first time running that, you might have to run
    `eval $(op login <DOMAIN> <EMAIL> <MASTER_KEY>)`
- Import GPG keys with `./import-gpg-keys.sh`
- Now setup dotfiles as described in the [bamorim/dotfiles]

[1Password CLI]: https://1password.com/downloads/command-line/
[1Password]: https://1password.com/
[bamorim/dotfiles]: https://github.com/bamorim/dotfiles