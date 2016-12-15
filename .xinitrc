#!/bin/bash

# load term colors
xrdb -merge ~/.Xresources

# set wallpaper
sh ~/.fehbg &

# load bitmap font
xset fp+ ~/.fonts &
xset fp rehash &

# session
session=${1:-dwm}
case $session in
    2bwm	      ) exec 2bwm;;
    dwm               ) exec dwm;;
    openbox           ) exec openbox-session;;
    pekwm             ) exec pekwm;;
    *) exec $1;;
esac
