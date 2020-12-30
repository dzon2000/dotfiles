#!/bin/bash

case $BUTTON in
    1) notify-send "🖥 CPU hogs" "$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)" ;;
    2) setsid -f st -e htop ;;
esac

temp=$(sensors | awk -v pattern="Core $1" '$0~pattern {print $3}')
echo -e $temp
