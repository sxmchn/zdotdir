#!/bin/zsh
# .zshrc - Run on interactive Zsh session.

# source antidote zsh plugins manager
# https://antidote.sh

if [[ "$OSTYPE" == darwin* ]]; then
  source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
elif [[ "$OSTYPE" == linux* ]]; then
  source /opt/antidote/antidote.zsh
fi

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# initialize Starship
# https://starship.rs
eval "$(starship init zsh)"
