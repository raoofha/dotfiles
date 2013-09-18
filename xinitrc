#setxkbmap -option caps:escape
#setxkbmap -option grp:alt_shift_toggle us,ir 
amixer set 'Beep' 0% mute
xrdb .Xresources
#xmodmap -e 'clear Mod3' &
#xmodmap -e "add Mod3 = Menu" 
#xmodmap -e "keysym Menu = Hyper_L" 
exec i3
#exec ck-launch-session  i3
