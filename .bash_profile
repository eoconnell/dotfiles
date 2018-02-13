#!/bin/bash

set -o vi

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s autocd
shopt -s globstar

if [[ -f "${HOME}/.bashrc" ]]; then
  source "${HOME}/.bashrc"
fi

source ${HOME}/.zsh/func/.git-prompt.sh

GIT_PS1_HIDE_IF_PWD_IGNORED=1
GIT_PS1_SHOWCOLORHINTS=
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=
GIT_PS1_STATESEPARATOR=" "

reset="\\e[0m";
red="\\e[1;31m";
green="\\e[1;32m";
yellow="\\e[1;33m";
blue="\\e[1;34m";
violet="\\e[1;35m";
cyan="\\e[1;36m";
white="\\e[1;37m";

if [[ "${USER}" == "root" ]]; then
  userStyle="${red}"
else
  userStyle="${blue}"
fi

if [[ "${SSH_TTY}" ]]; then
  hostStyle="${bold}${cyan}";
else
  hostStyle="${cyan}";
fi

hostType="";
if grep -q "^flags.* hypervisor" /proc/cpuinfo; then
  hostType="☁️  ";
fi

PS1="\\[\\033]0;\\w\\007\\]";
PS1+="\\n";
PS1+="\\[${userStyle}\\]\\u ";
PS1+="\\[${white}\\]at ";
PS1+="\\[${hostStyle}\\]${hostType}\\h ";
PS1+="\\[${white}\\]in ";
PS1+="\\[${green}\\]\\w ";
PS1+="\$(__git_ps1 \"${white}on ${violet}%s${reset}\")";
PS1+="\\n";
PS1+="\\[${white}\\]\$ \\[${reset}\\]";

export PS1;

PS2="\\[${yellow}\\]> \\[${reset}\\]";

export PS2;

