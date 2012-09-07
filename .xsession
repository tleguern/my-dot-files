#!/bin/sh

xsetroot -solid black &
xset -b
whereis numlockx && numlockx on &
whereis xbattbar && xbattbar -i white -o black right &
xterm &
/usr/X11R6/bin/cwm
