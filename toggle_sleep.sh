#!/bin/bash

if [[ $1 == "disable" ]]; then
    echo "Disabling sleep..."
    sudo pmset -b sleep 0
    sudo pmset -b disablesleep 1
    echo "Sleep is now disabled."
elif [[ $1 == "enable" ]]; then
    echo "Enabling sleep..."
    sudo pmset -b sleep 5
    sudo pmset -b disablesleep 0
    echo "Sleep is now enabled."
else
    echo "Usage: $0 [enable|disable]"
fi

