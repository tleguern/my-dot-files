#!/bin/sh

xsetroot -solid black &
xset -b
whereis numlockx && numlockx on &
whereis xbattbar && xbattbar -i white -o black right &
whereis xclock && xclock &
setxkbmap us_qwerty-fr
/usr/X11R6/bin/cwm
