#!/bin/bash

# Check if Spotify is already running
if pgrep -x "spotify" > /dev/null
then
    # Focus the Spotify window
    hyprctl dispatch focuswindow Spotify
else
    # Launch Spotify
    spotify &
fi

