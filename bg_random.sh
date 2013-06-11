#!/bin/bash
#files=(~/Pictures/NationalGeographic/1/*)
#feh --bg-scale "${files[ RANDOM % ${#files[@]}]}"
find ~/pictures -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-scale
