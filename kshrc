PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.

export HISTSIZE=1000
export PAGER=less
export LESSSECURE=1
export EDITOR=vim
export ALTERNATE_EDITOR=vi
export VISUAL=$EDITOR
export USE_EDITOR=$EDITOR
export FCEDIT=$EDITOR

export LC_CTYPE=en_US.UTF-8

export ANSIBLE_CACHE_PLUGIN_CONNECTION=~/.ansible_facts

alias rmafrodite='rm -fr * && rm -fr *' # Suggested by Zerk
alias fluidsynth='fluidsynth -i /usr/local/share/generaluser-gs/GeneralUser_GS.sf2'
alias cal='cal -m'

set -o vi

if [ -r $HOME/.kshenv.ssh ]; then
	. $HOME/.kshenv.ssh
fi

if [ -r $HOME/.kshenv.local ]; then
	. $HOME/.kshenv.local
fi

/usr/games/fortune -o -s
