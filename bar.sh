#!/bin/bash
source ~/dwm_test/dwm-6.2/themes/onedark.h
function gamer(){
    echo "^c$black^ ^b$darkblue^ 󱑆 ^c$black^^b$blue^ $(date '+%I:%M')"
}
echo -e "Hello,\nWorld!"

while true; do
     sleep 1 && xsetroot -name "$(gamer)"
    
done