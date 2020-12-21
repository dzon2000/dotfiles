#!/bin/bash

weather=$(curl -s 'wttr.in/Białystok?format=3')
if [[ "$weather" == "Unknown location"* ]]; then
    echo "No data"
else
    echo -e "$weather" | sed 's/\xEF\xB8\x8F//g'
fi
