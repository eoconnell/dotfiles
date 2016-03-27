setopt prompt_subst
setopt promptsubst

autoload -U promptinit
promptinit
prompt epo

export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="$HOME/bin:$PATH"

alias ls="ls -G"
alias l="ls -l"
alias ll="ls -la"
alias sr="screen -r"
alias c="cd"
alias v="view -"
alias vi="vim"

export GREP_OPTIONS="--color"
export LESS='-R'

export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export EDITOR=vim

export ACK_COLOR_MATCH='red'

function mcd() { mkdir -p $1 && cd $1 }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Initialize jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Initialize rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
