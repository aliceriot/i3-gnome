#!/bin/bash

safe_copy() {
    src=$1
    dest=$2
    if [[ -f $dest/$src ]]; then
        echo "file already exists!"
    else
        cp $src $dest
    fi
}

safe_copy i3-gnome /usr/bin/
safe_copy i3-gnome.desktop /usr/share/applications/
safe_copy i3-gnome.session /usr/share/gnome-session/sessions/
safe_copy i3-gnome.desktop /usr/share/xsessions/
