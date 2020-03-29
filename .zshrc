# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
HISTCONTROL=ignoreboth
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lihram/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $HOME/.scripts/env.sh

# fireeeee
eval "$(starship init zsh)"
