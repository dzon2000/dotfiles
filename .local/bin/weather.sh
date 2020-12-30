#!/bin/bash

weather=$(curl -s 'wttr.in/Białystok?format=1')
if [[ "$weather" == "Unknown location"* ]]; then
    echo "No data"
else
    echo -e -n "$weather" | sed 's/\xEF\xB8\x8F//g'
fi
