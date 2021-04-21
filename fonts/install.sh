#!/bin/bash

SCRIPTPATH="$(dirname $(readlink -f $0))"

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts

pushd $SCRIPTPATH/nerd-fonts
    ./install.sh
popd
