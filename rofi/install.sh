#!/bin/bash

SCRIPTPATH="$(dirname $(readlink -f $0))"
ROFI_CONFIG="$HOME/.config/rofi/config"

sudo apt -y install rofi

cp "$SCRIPTPATH/config/config" "$ROFI_CONFIG"
