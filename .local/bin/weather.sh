#!/bin/bash

weather=$(curl -s 'wttr.in/Białystok?format=3')

echo $weather
