# Alias
alias df='df -h'
alias du='du -h'
alias ll="ls -lhF"
alias la="ls -lhFa"

# Options
setopt nobeep
setopt nocorrect
setopt nohistbeep
setopt nolistbeep
setopt autocontinue
setopt autolist
setopt multibyte
setopt allexport
setopt autocd

# Modules
autoload zcalc
autoload ztodo
autoload zed

autoload compinit
compinit

bindkey -e
