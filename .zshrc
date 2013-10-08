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

export EDITOR=vi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
