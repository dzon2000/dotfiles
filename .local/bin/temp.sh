#!/bin/bash

case $BUTTON in
    1) notify-send "🖥 CPU hogs" "$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)" ;;
    2) setsid -f st -e htop ;;
esac

temp1=$(sensors | awk -v pattern="Core 0" '$0~pattern {print substr($3, 2, 2)}')
temp2=$(sensors | awk -v pattern="Core 1" '$0~pattern {print substr($3, 2, 2)}')
sum=$(expr $temp1 + $temp2)
echo -e $(expr $sum / 2)
