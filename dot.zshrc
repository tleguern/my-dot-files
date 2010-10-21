#############
# Les alias #
#############
alias la="ls -lhFa"
alias e='emacs -nw'
alias emacs='emacs -nw'
alias ne='emacs'
alias links='links -http-proxy proxies.epitech.net:3128'
alias df='df -h'
alias du='du -h'
alias ll="ls -lhF"
alias start_emacs_server="emacs-23.2 --daemon=NAZI"

#confusing keyword
alias male='make'
alias made='make'
alias naje='make'
alias maek='make'
alias nake='make'
alias 'cd..'='cd ..'
alias gnus='emacs -f gnus'

ssh_marand_a()
{
    ssh $* le-gue_t@`ns_who -h marand_a | head -n 1 | cut -d '[' -f2 | sed s/"]"/""/`
}

alias marand_a='`ns_who -h marand_a | head -n 1 | cut -d "[" -f2 | sed s/"]"/""/`'

########
# Keys #
########
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[5~~" beginning-of-history
bindkey "^[[6~~" end-of-history
bindkey "^[[3~" delete-char
bindkey "^H" backward-delete-word
bindkey "^X" copy-region-as-kill
bindkey "^W"  backward-kill-word
bindkey "^[Od" backward-word
bindkey "^[Oc" forward-word
bindkey "^[[2~" overwrite-mode

###########
# Options #
###########
unsetopt beep
unsetopt hist_beep
unsetopt list_beep
setopt AUTO_CONTINUE
setopt extendedglob
autoload zcalc
autoload calendar
setopt AUTO_LIST
setopt MULTIBYTE
setopt ALL_EXPORT
setopt AUTO_CD

########
# Vars #
########
export no_proxy=sec-l.org,localhost,epitech.net
export HTTP_PROXY=$http_proxy
export PAGER=most
export EDITOR="emacs -nw"
export ALTERNATE_EDITOR="mg"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export SVN_EDITOR=$ALTERNATE_EDITOR
export SUDO_EDITOR=$ALTERNATE_EDITOR
export SUDO_PROMPT="[Password] "
export PATH=$PATH:/sbin:/usr/local/sbin:/usr/local/netsoul:/usr/sbin:~/utils
export PS1="[${P_USER}%n${CL_NORMAL}@%m][%C][%T]"
export CVSROOT="anoncvs@anoncvs.skyrock.com:/cvs/openbsd"
export SOCKS_USERNAME=le-gue_t
export SOCKS_CONF=~/socks.conf
export PKG_PATH="http://ftp.fr.openbsd.org/pub/OpenBSD/snapshots/packages/i386/"
export CNORM_PATH=/home/xin/Desktop/cnorm_2.10/
export KOOC_PATH=/home/xin/rendu/zkooc

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/xin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
