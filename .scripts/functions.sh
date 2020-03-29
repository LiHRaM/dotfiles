#! /usr/bin/env sh

# Functions shared by different shells

# Source files if they exist
# usage: source_if $HOME/.bash_aliases
function source_if() {
    if [[ -r $1 ]]; then
        source $1
    fi
}

# Prepend to path
# usage: path_prepend $HOME/.local/bin
function path_prepend() {
    PATH="$1:$PATH"
}

# Combine mkdir and cd
# usage: take $HOME/newfolder
function take() {
    mkdir $1 && cd $_
}