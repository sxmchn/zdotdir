#!/bin/zsh
# .zshrc - Run on interactive Zsh session.

# source antidote zsh plugins manager
# https://antidote.sh
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# initialize Starship
# https://starship.rs
eval "$(starship init zsh)"
