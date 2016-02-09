#!/bin/bash

icon_font="Ionicons:pixelsize=18"
icon_color="#C9FF1A"
# The Ionicons for the volume states
vol_mute=""
vol_low=""
vol_mid=""
vol_high=""

volume=$(amixer get Master | grep "Front Left:" \
    | awk '{print $5}' | tr -d '[]' | tr -d '%')
speaker=$(amixer get Master | grep "Front Left:" \
    | awk '{print $6}' | tr -d '[]')

if [[ "$speaker" = "off" ]]; then
    icon=$vol_mute
    icon_color=#F4560B
elif (("$volume" < 33)); then
    icon=$vol_low
elif (("$volume" < 66)); then
    icon=$vol_mid
else
    icon=$vol_high
fi

echo "^fg("$icon_color")^fn($icon_font)$icon^fn()^fg() $volume%"
