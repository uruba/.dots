init_startup
dwmblocks &
autorandr -c

# Turn off auto screen off
xset -dpms
xset s off

xrdb -merge ~/.Xresources

~/.fehbg

while true; do
    dwm 2> ~/.dwm.log
done
