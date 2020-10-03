#!/bin/bash

mem=$(free -h | awk '/^Pam/ { print $3"/"$2 }' | sed s/i//g)
echo $mem
