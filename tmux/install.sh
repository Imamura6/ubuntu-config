#!/bin/bash

SCRIPTPATH="$(dirname $(readlink -f $0))"
TMUX_CONFIG="$HOME/.config/tmux"
TERMINATOR_CONFIG="$HOME/.config/terminator/config"

sudo apt -y install terminator tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

cp -r "$SCRIPTPATH/config" "$TMUX_CONFIG"
cp "$CRIPTPATH/terminator/config" "$TERMINATOR_CONFIG"
cp "$CRIPTPATH/dotfiles/*" "$HOME"
