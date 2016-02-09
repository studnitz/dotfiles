#!/bin/bash

icons="Ionicons:size=15"
battery=$(upower -e | grep BAT0)
bat_percent=$(upower -i $battery | grep 'percentage' | grep -o '[0-9]*')
bat_state=$(upower -i $battery | grep 'state' | awk '{print $2}')
battery_icon="^fn($icons)^fn()"

if [[ "$bat_state" = "discharging" ]]
then
    if (("$bat_percent" == 100))
    then
        battery_icon="^fg(#C9FF1A)^fn($icons)^fn()^fg"
    elif (("$bat_percent" < 100)) && (("$bat_percent" >= 70))
    then
        battery_icon="^fg(#C9FF1A)^fn($icons)^fn()^fg"
    elif (("$bat_percent" < 70)) && (("$bat_percent" >= 36))
    then
        battery_icon="^fg(#F6FF1A)^fn($icons)^fn()"
    elif (("$bat_percent" < 35)) && (("$bat_percent" >= 1))
    then
        battery_icon="^fg(#FFE31A)^fn($icons)^fn()"
    fi
else #Charging
    battery_icon="^fg(#C9FF1A)^fn($icons)^fn()"
fi

width=$((xftwidth "$icons" "")) # Calculate offset of icon

echo "$battery_icon^p($width)^fg() $bat_percent%"
