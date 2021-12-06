#!/bin/bash

#https://dwm.suckless.org/patches/statusallmons/dwm-statusallmons-6.2.diff perhaps i should get this one day?

source ~/.dwm/themes/onedark.h

function gamer(){
    echo "^c$black^ ^b$darkblue^  ^c$black^^b$blue^ $(date '+%a, %H:%M | %d/%m/%Y ')"
}
function updates(){
    updates=$(checkupdates | wc -l)
    if [ "$updates" -eq "0" ]; then
        echo "^c$green^ Fully Updated"
    else
        echo "^c$green^ $updates"" updates"
    fi
}

while true; do
     sleep 1 && xsetroot -name "$(updates) $(gamer)"
done
