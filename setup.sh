#!/bin/bash

replace() {
    src=$1
    dest=$2
    if [[ -f $dest/$src ]]; then
        rm $dest/$src
        cp $src $dest
    else
        cp $src $dest/
    fi
}

replace i3-gnome /usr/bin
replace i3-gnome.desktop /usr/share/applications
replace i3-gnome.session /usr/share/gnome-session/sessions
replace i3-gnome.desktop /usr/share/xsessions
