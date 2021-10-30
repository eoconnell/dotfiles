#!/bin/bash

set -o vi

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s autocd
shopt -s globstar


alias ls="ls --color"
alias l="ls -l"
alias ll="ls -la"
alias sr="screen -r"
alias c="cd"
alias v="view -"
alias vi="vim"
alias grep="grep --color"


export LESS='-R'

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export EDITOR=vim

export ACK_COLOR_MATCH='red'

export XDG_CONFIG_HOME="$HOME/.config"

# shellcheck source=/dev/null
source "${HOME}/.zsh/func/.git-prompt.sh"

export GIT_PS1_HIDE_IF_PWD_IGNORED=1
export GIT_PS1_SHOWCOLORHINTS=
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=
export GIT_PS1_STATESEPARATOR=" "

reset="\\e[0m"
# bold="\\e[1m"
red="\\e[1;31m"
# green="\\e[1;32m"
yellow="\\e[1;33m"
blue="\\e[1;34m"
# violet="\\e[1;35m"
# cyan="\\e[1;36m"
# white="\\e[1;37m"

host_type="";
if grep -q "^flags.* hypervisor" /proc/cpuinfo; then
    host_type="☁️  ";
fi

PS1="\\[\\033]0;\\w\\007\\]"
PS1+="\\n"
PS1+="${host_type}\\h \\w "
PS1+="\$(__git_ps1 \"${reset}%s\")"
PS1+="\\n"
PS1+="$ "
export PS1

PS2="\\[${yellow}\\]> \\[${reset}\\]"
export PS2

# shellcheck disable=SC1091
source /usr/local/share/chruby/chruby.sh
# shellcheck disable=SC1091
source /usr/local/share/chruby/auto.sh
# shellcheck disable=SC1090
source "$HOME/.cargo/env"

export PATH="$HOME/.local/bin:$PATH"
