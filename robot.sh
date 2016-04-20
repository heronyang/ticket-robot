#!/bin/bash
wget $URL -O base
echo "Press [CTRL+C] to stop.."

while :
do
    wget $URL -O new
    if diff new base; then
        date
        echo "Nothing new"
    else
        echo "New Ticket!"
        osascript -e 'display notification "time to celebrate" with title "New Ticket" sound name "/System/Library/Sounds/Basso.aiff"'
        exit
    fi
    sleep 60
done
