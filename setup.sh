#!/bin/sh

ansible-galaxy install kewlfft.aur
ansible-galaxy install gantsign.oh-my-zsh
ansible-playbook main.yaml -K