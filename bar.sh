#!/bin/bash

#https://dwm.suckless.org/patches/statusallmons/dwm-statusallmons-6.2.diff perhaps i should get this one day?

color2="#e05a2f"
color1="#e9896a"
green="#7eca9c"
black="#1e222a"

function gamer(){
    echo "^c$black^ ^b$color2^  ^c$black^^b$color1^ $(date '+%a, %H:%M | %d/%m/%Y ')"
}
function updates(){
    updates=$(checkupdates | wc -l)
    if [ "$updates" -eq "0" ]; then
        echo "^c$color1^ Fully Updated"
    elif [ "$updates" -eq "1" ]; then
        echo "^c$green^ $updates"" update"
    else
        echo "^c$green^ $updates"" updates"
    fi
}

while true; do
     sleep 1 && xsetroot -name "$(updates) $(gamer)"
done
