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

alias rmafrodite='rm -fr * && rm -fr *' # Suggested by Zerk
alias fluidsynth='fluidsynth -i /usr/local/share/generaluser-gs/GeneralUser_GS.sf2'
alias cal='cal -m'

if [ -r $HOME/.kshenv.local ];then
	. $HOME/.kshenv.local
fi
if [ -r $HOME/.kshenv.local ];then
	. $HOME/.kshenv.ssh
fi

/usr/games/fortune -o -s
