#!/usr/bin/env bash

# folder in use to source wallpapers for swww-daemon
DIR=$HOME/.config/hypr/backgrounds
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

awww query || awww-daemon

# applies wallpaper via sww
awww img ${DIR}/${RANDOMPICS} --transition-fps 30 --transition-type any --transition-duration 1
