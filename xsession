#!/bin/sh

xsetroot -solid black &
xset -b
whereis numlockx && numlockx on &
whereis xbattbar && xbattbar -i white -o black right &
whereis xclock && xclock &
whereis xidle && xidle -delay 5 -sw -program "/usr/X11R6/bin/xlock -mode bat" \
    -timeout 300 &
setxkbmap us_qwerty-fr
ENV=$HOME/.kshrc /usr/X11R6/bin/cwm
