#!/bin/bash

SCRIPTPATH="$(dirname $(readlink -f $0))"
I3_CONFIG_PATH="$HOME/.config/i3"
sudo apt -y install i3 imagemagick scrot i3blocks

if [ ! -d $I3_CONFIG_PATH ]; then
    mkdir -p $I3_CONFIG_PATH
fi

cp -r "$SCRIPTPATH/config/*" "$I3_CONFIG_PATH"
