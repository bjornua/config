#!/bin/sh
declare -x PATH="/home/bjorn/bin:$PATH"
autoscreen 
setxkbmap -option 'compose:caps'
#numlockx on &
[ -f .fehbg ] && source .fehbg &
[ -f .jackdrc ] && source .jackdrc &
xsetroot -cursor_name left_ptr &
xrdb ~/.Xresources
exec ssh-agent xmonad
