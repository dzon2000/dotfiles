#!/bin/sh

UPS=$(pacman -Qu)

if [ -z $UPS ]
then
    echo "Up to date"
else
    echo "$UPS updates"
fi
