#!/bin/bash

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
