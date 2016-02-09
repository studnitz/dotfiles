#!/bin/bash
# Simple gradient function, it accepts a value between 0 (red) and 100 (green)
# and prints a color in hexadecimal format on the gradient.

if (($# != 1)) || (($1 > 100)) || (($1 < 0)); then
    echo "Wrong arguments. Usage: $0 value. Value must be between 0 and 100."
    exit 1
fi
number=(100-$1)

red=$((2 * number))
green=$((2 * (100 - number)))
if (($red > 100));then red=100; fi
if (($green > 100));then green=100; fi
red=$(($red*255/100))
green=$(($green*255/100))

echo "#$(printf '%02x' $red)$(printf '%x' $green)00"
