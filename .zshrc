setopt prompt_subst
setopt promptsubst

autoload -U promptinit
promptinit
prompt epo

export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"

alias ls="ls -G"
alias l="ls -lG"
alias ll="ls -laG"
alias sr="screen -r"
alias c="cd"
alias v="view -"

export GREP_OPTIONS="--color"

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export EDITOR=vi

export ACK_COLOR_MATCH='red'

function mcd() { mkdir -p $1 && cd $1 }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Initialize rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
