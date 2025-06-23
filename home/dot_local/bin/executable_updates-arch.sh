#!/bin/sh

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

if [ "$updates" -gt 0 ]  || [ "$updates_aur" -gt 0 ]; then
    echo "$updates_aur <span font='12'></span> $updates"
else
    echo ""
fi