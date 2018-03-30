PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.

export HISTSIZE=1000
export PAGER=less
export EDITOR=vim
export ALTERNATE_EDITOR=vi
export VISUAL=$EDITOR
export USE_EDITOR=$EDITOR
export FCEDIT=$EDITOR

export LC_CTYPE=en_US.UTF-8

alias rmafrodite='rm -fr * && rm -fr *' # Suggested by Zerk

if [ -r $HOME/.kshenv.local ];then
	. $HOME/.kshenv.local
fi

/usr/games/fortune -o -s
