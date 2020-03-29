#! /usr/bin/env sh

# Environment variables for the interactive shell

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# This script only works if run from $HOME/.scripts/
source $HOME/.scripts/functions.sh

source_if $HOME/.cargo/env
source_if $HOME/.scripts/env
source_if $HOME/.config/node_env
source_if $HOME/.nix-profile/etc/profile.d/nix.sh

path_prepend $HOME/go/bin

export path
export MANPAGER="sh -c 'col -bx | bat -l man -p'"