#!/bin/sh

# default apps
export EDITOR="nvim"
export TERMINAL="terminal"
export BROWSER="brave"

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"


export DOTFILESDIR="$HOME/.dotfiles"
export ZDOTDIR="$DOTFILESDIR/zsh"
