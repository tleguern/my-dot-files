#!/bin/sh

careful() {
	file="$1"; shift

	if ! diff -q ~/."$file" "$file"; then
		diff -up ~/."$file" "$file"
		echo -n "Replace ? "
		read REPLY
		case "$REPLY" in
		y|Y|yes) cp "$file" ~/."$file";;
		*) .;;
		esac
	fi
}

mkdir -p ~/.ssh

case "$(uname -s)" in
	OpenBSD)
		cp -r calendar ~/.calendar
		cp -r config ~/.config
		careful cwmrc
		if [ ! -f ~/.ssh/local ]; then
			echo 'IdentityAgent ~/.ssh/agent.sock' > ~/.ssh/local
		fi
		careful wsconsctl.conf
		careful Xdefaults
		careful xpdfrc
		careful xsession
	;;
	Linux)
		careful mkshrc
		if [ ! -f ~/.ssh/local ]; then
			touch ~/.ssh/local
		fi
		chmod -w ~/.mkshrc
		rm -f .bash_history
		rm -f .bash_logout
		rm -f .bashrc
	;;
	*) echo "Hu?"; exit 1;;
esac

careful gitconfig
careful kshrc
cp nethackrc ~/.nethackrc
cp ssh/config ~/.ssh/
careful vimrc

chmod -w ~/.ssh/config
chmod -w ~/.kshrc
