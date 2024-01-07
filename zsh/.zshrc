#!/bin/sh

# source relevant files
source "$HOME/.zsh-ansible"
source "$ZDOTDIR/.zsh-functions"
source "$ZDOTDIR/.zsh-exports"
source "$ZDOTDIR/.zsh-aliases"

# plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"


# disables vim mode
bindkey -e

# keybindings
bindkey -s ^f "my-tmux-sessionizer\n"
# bindkey -s ^Fc "my-config-selector\n"
bindkey -s ^e  "nvim .^M"

# saves history
HISTFILE=$ZDOTDIR/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000

# completion 
autoload -Uz compinit
compinit
source <(kubectl completion zsh)
