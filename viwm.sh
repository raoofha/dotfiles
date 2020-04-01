#!/bin/bash

winid=`xdotool getactivewindow`
app=`xprop -id "$winid" WM_CLASS | sed "s/.*\"\(.*\)\",.*/\1/"`

case $app in
  "google-chrome")
    case $2 in
      h)
        xdotool key Left
        ;;
      j)
        xdotool key Down
        ;;
      k)
        xdotool key Up
        ;;
      l)
        xdotool key Right
        ;;
    esac
    xdotool 
    ;;
  *)
    xdotool $1 $2
    ;;
esac
