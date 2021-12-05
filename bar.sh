#!/bin/bash

#https://dwm.suckless.org/patches/statusallmons/dwm-statusallmons-6.2.diff perhaps i should get this one day?

source ~/dwm_test/dwm-6.2/themes/onedark.h
function gamer(){
    echo "^c$black^ ^b$darkblue^ 󱑆 ^c$black^^b$blue^ $(date '+%a %H:%M  -  %d/%m/%Y')"
}
function updates(){
    updates=$(checkupdates | wc -l)
    if [ -z "$updates" ]; then
        echo "^c$green^  Fully Updated"
    else
        echo "^c$green^  $updates"" updates"
    fi
}

while true; do
     sleep 1 && xsetroot -name "$(updates) $(gamer)"
done