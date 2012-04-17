# zsh - defaut environment

export PATH=$HOME/bin:/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin

export PAGER=less

export EDITOR=vim
export ALTERNATE_EDITOR=mg
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

export SVN_EDITOR=$ALTERNATE_EDITOR

export SUDO_EDITOR=$ALTERNATE_EDITOR
export SUDO_PROMPT="[Password]"

export LC_CTYPE=en_US.UTF-8

export HISTSIZE=2000

export PS1="[%n@%m:%C][%T][%?]"

if [[ -r .zshenv.local ]];then
	. .zshenv.local
fi
