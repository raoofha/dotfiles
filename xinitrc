setxkbmap -option caps:escape
setxkbmap -option grp:alt_shift_toggle us,ir 
xmodmap -e 'add mod3 = Menu'
exec i3
#exec ck-launch-session  i3
