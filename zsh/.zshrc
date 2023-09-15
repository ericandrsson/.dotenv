#!/bin/sh

# source relevant files
source ".zsh-functions"
zsh_add_file ".zsh-exports"
zsh_add_file ".zsh-aliases"
zsh_add_file ".zsh-ansible"

# keybindings
bindkey -s ^f "tmux-sessionizer\n"

