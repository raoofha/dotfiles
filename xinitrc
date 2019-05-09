#setxkbmap -option caps:escape
#setxkbmap -option grp:alt_shift_toggle us,ir 
#amixer set 'Beep' 0% mute
#amixer sset Master unmute
xrdb .Xresources
#xmodmap -e 'clear Mod3' &
#xmodmap -e "add Mod3 = Menu" &
#unclutter &
xmodmap -e "keysym Menu = Hyper_L" &
#keynav &

# turn off the beep sound
xset b off

export QT_QPA_PLATFORMTHEME=gtk2

export PATH=$PATH:$HOME/.local/bin

xinput --set-prop 9 "Coordinate Transformation Matrix" 2 0 0 0 2 0 0 0 1

exec dbus-launch i3
#exec ck-launch-session  i3

