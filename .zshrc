# Alias
alias df='df -h'
alias du='du -h'
alias ll="ls -lhF"
alias la="ls -lhFa"

# Options
unsetopt beep
unsetopt hist_beep
unsetopt list_beep
setopt auto_continue
setopt extendedglob
setopt auto_list
setopt multibyte
setopt all_export
setopt auto_cd

# Modules
autoload zcalc
autoload ztodo
autoload tetris
autoload zed
zmodload zsh/net/tcp
