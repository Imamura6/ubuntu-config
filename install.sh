#!/bin/bash

SCRIPTPATH="$(dirname $(readlink -f $0))"
CONFIGS=$(find $SCRIPTPATH -mindepth 1 -maxdepth 1 -type d -not -path '*/\.*')

for config in $CONFIGS; do
    pushd $config &> /dev/null
        ./install.sh
    popd &> /dev/null
done
