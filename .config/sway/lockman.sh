#set $lock swaylock -c 250000

#exec swayidle -w \
#	timeout 600 $lock
#	timeout 570 'swaymsg "output * dpms off"' \
#	resume 'swaymsg "output * dpms on"' \
#	before-sleep $lock
#! /bin/sh
#
swayidle \
	timeout 10 'swaymsg "output * dpms off"' \
	resume 'swaymsg "output * dpms on"' \

swaylock -c 250000

kill %%

