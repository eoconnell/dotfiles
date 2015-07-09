setopt prompt_subst
setopt promptsubst

set -o vi

autoload -U promptinit
promptinit
prompt epo

export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home

alias ls="ls --color=auto"
alias l="ls -l"
alias ll="ls -la"
alias sr="screen -r"
alias c="cd"
alias v="view -"
alias vi="vim"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export EDITOR=vim

export ACK_COLOR_MATCH='red'

function mcd() { mkdir -p $1 && cd $1 }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Initialize rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
