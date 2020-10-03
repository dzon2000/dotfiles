#!/bin/bash

disk=$(df -h | awk '{ if ($6 == "/") print $4 }')
echo $disk
