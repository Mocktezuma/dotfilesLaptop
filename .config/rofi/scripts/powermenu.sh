#!/bin/bash

rofi_command="rofi -theme ~/.cache/wal/colors-rofi-dark-menu.rasi"

### Options ###
power_off="襤 "
reboot="  ﰇ "
lock="  "
suspend="鈴  "
log_out="  "
# Variable passed to rofi
options="$power_off\n$reboot\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
	timew stop 'computer'
        sleep .5
        systemctl poweroff
        ;;
    $reboot)
	timew stop 'computer'
        sleep .5
        systemctl reboot
        ;;
    $log_out)
        sleep .5
        i3-msg exit
        ;;
esac


