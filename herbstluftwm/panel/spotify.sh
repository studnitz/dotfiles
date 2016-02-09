#!/bin/bash
# This Script requires the "sp" cli from wandernauta
# https://gist.github.com/wandernauta/6800547
# After downloading it, run
# install sp /usr/bin/

icons="Ionicons:pixelsize=15"
icon_color="#C9FF1A"
music_icon="^fg($icon_color)^fn($icons)^fn()^fg()"

running=$(sp version) # Exit with Error Code if Spotify is not running
rc=$?; if [[ $rc != 0  ]]; then exit $rc; fi

eval $(sp eval) # Creates our metadata

echo "$music_icon $SPOTIFY_ARTIST - $SPOTIFY_TITLE"
