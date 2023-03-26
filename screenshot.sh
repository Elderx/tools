#!/bin/bash
# Takes a screenshot using grim and slurp, then saves it as .png and copies it to clipboard. Tested working on wayland + sway.
# Add bindsym $mod+p exec /PATH_TO/screenshot.sh to sway config file.
FILEPATH="ADD_PATH_TO_STORE_SCREENSHOTS"
FILENAME="$(uuidgen 2>&1)"
grim -g "$(slurp)" $FILEPATH$FILENAME.png
wl-copy < $FILEPATH$FILENAME.png
