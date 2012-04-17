#!/bin/sh

xsetroot -solid black &
xset -b
whereis numlockx && numlockx on &
whereis xbattbar && xbattbar -i white -o black right &
xterm &
xset fp+ /usr/local/lib/X11/fonts/anonymous-pro &
xset fp rehash &
if [ `whereis i3` ];then
	/usr/local/bin/i3
else
	/usr/X11R6/bin/cwm
fi
