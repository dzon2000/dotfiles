#!/bin/bash

case $BUTTON in
    1) dunstify -h string:x-dunst-stack-tag:calendar "Calendar" "$(cal -3)";;
esac

date=$(date '+%b %d (%a) %H:%M%p')
echo -e $date
