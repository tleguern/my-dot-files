export PATH=$PATH:/sbin:/usr/local/sbin:/usr/local/netsoul:/usr/sbin:~/utils:/usr/games

if [[ -r .zshenv.epitech ]]; then
	source .zshenv.epitech
fi

export PAGER=most

export EDITOR="vim"
export ALTERNATE_EDITOR="mg"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export SVN_EDITOR=$ALTERNATE_EDITOR
export SUDO_EDITOR=$ALTERNATE_EDITOR
export SUDO_PROMPT="[Password] "

export PKG_PATH="http://ftp.fr.openbsd.org/pub/OpenBSD/snapshots/packages/i386/"
export CVSROOT="anoncvs@anoncvs.skyrock.com:/cvs/openbsd"

HISTFILE=~/.zhistfile
HISTSIZE=1000
SAVEHIST=1000

if [[ -o login ]]; then
	export PS1="[%n@%m:%C][%T][%?]"
else
	export PS1="%F{red}[%f%U%n%u@%m:%C%F{red}][%f%T%F{red}][%f%?%F{red}]%f"
fi
