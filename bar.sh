#!/bin/bash

#https://dwm.suckless.org/patches/statusallmons/dwm-statusallmons-6.2.diff perhaps i should get this one day?

color2="#fca662"
color1="#F49448"
green="#7eca9c"
black="#181B20"
mic_source=$(pactl get-default-source)

function dateTime(){
    echo "^c$black^ ^b$color2^ $(date '+%H:%M') ^c$black^^b$color1^ $(date '+%d/%m/%Y ')^b$black^ "
}

function microphone(){
    is_mute=$(pactl get-source-mute $mic_source)
    if [ "$is_mute" = "Mute: yes" ]; then
        echo ""
    else
        echo ""
    fi
}
#function updates(){
#    updates=$(checkupdates | wc -l)
#    if [ "$updates" -eq "0" ]; then
#        echo "^c$color1^ Fully Updated"
#    elif [ "$updates" -eq "1" ]; then
#        echo "^c$green^ $updates"" update"
#    else
#        echo "^c$green^ $updates"" updates"
#    fi
#}

while true; do
     sleep 1 && xsetroot -name "$(microphone) $(dateTime)"
 done
