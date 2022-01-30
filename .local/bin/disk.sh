#!/bin/bash

disk_root=$(df -h | awk '{ if ($6 == "/") print $4 }')
disk_home=$(df -h | awk '{ if ($6 == "/home") print $4 }')
echo -e "$disk_root"
