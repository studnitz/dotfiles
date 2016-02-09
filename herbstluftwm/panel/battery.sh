#!/bin/bash
# The battery icon changes its color based on the current battery percentage

icon_font="Ionicons:pixelsize=15"
battery=$(upower -e | grep BAT0)
bat_percent=$(upower -i $battery | grep 'percentage' | grep -o '[0-9]*')
bat_state=$(upower -i $battery | grep 'state' | awk '{print $2}')
bat_low=""
bat_mid=""
bat_high=""
bat_full=""
bat_charging=""

if [[ "$bat_state" = "discharging" ]]
then
    if (("$bat_percent" == 100)); then
        battery_icon=$bat_full
    elif (("$bat_percent" > 66)); then
        battery_icon=$bat_high
    elif (("$bat_percent" > 33)); then
        battery_icon=$bat_mid
    else
        battery_icon=$bat_low
    fi
else #Charging
    battery_icon=$bat_charging
fi

icon_color=$(~/.config/herbstluftwm/panel/green2red.sh $bat_percent)

echo "^fg($icon_color)^fn($icon_font)$battery_icon^fn()^fg() $bat_percent%"
