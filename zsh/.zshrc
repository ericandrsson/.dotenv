#!/bin/sh

# adds useful functions
source "$ZDOTDIR/zsh-functions"

# source relevant files
zsh_add_file ".zsh-exports"
zsh_add_file ".zsh-aliases"
zsh_add_file ".zsh-vim-mode"
zsh_add_file ".zsh-ansible"

# keybindings
bindkey -s ^f "tmux-sessionizer\n"

