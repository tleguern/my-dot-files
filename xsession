#!/bin/sh

export ENV=$HOME/.kshrc

xsetroot -solid black &
xset -b
xclock -geometry 100x100-1+1 &
xterm -geometry 80x24 &
xidle -delay 5 -sw -program "/usr/X11R6/bin/xlock -mode bat" -timeout 300 &
whereis xbattbar && xbattbar -i white -o black right &

# Enable middle button on ThinkPads
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

/usr/X11R6/bin/cwm
