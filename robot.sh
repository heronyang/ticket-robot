#!/bin/bash
wget $URL -O new
if diff new base; then
    echo "Nothing new"
else
    echo "New Ticket!"
fi
