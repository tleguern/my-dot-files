#!/bin/sh

y=`xrandr -q | head -n 1 | cut -d ',' -f 2 | cut -d ' ' -f 5`
y=$((y-18))

while true
do
    is_playing="`mpc status | wc -l`"
    song_status="`mpc -f "%artist% - %title% #[%album%#]" | head -n 1`"
    song_time="`mpc | head -n 2 | tail -n 1 | cut -d ' ' -f 1,2,6`"
    volume="`mpc | tail -n 1 | cut -d ' ' -f 1,2`"
    date="^fg(#00bb99)`date | awk '{print $4}'`^fg()"
    kb="`setxkbmap -print | head -2 |tail -1 | cut -d "(" -f 2 | cut -d ")" -f 1`"
    if [ $kb = 'azerty' ]
    then
	kb="fr";
    else
	kb="us";
    fi

    if [ $is_playing -eq 3 ]
    then
	echo "$song_status $song_time $volume $date [^fg(red)$kb^fg()] "
    else
	echo "$date [^fg(red)$kb^fg()] "
    fi
    sleep 1
done  | dzen2 -ta r -x 100 -y $y -e "button4=exec:mpc volume +5;button5=exec:mpc volume -5" -fn "-misc-anonymous pro-medium-r-normal--13-*-*-*-*-*-iso10646-1" -h 17
