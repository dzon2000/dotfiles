#!/bin/bash
temp=$(sensors | awk -v pattern="Core $1" '$0~pattern {print $3}')
echo $temp
