#!/bin/bash

SCRIPTPATH="$(dirname $(readlink -f $0))"

wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
sudo apt -y install vivaldi-stable
sudo cp "$SCRIPTPATH/config/custom.css" /opt/vivaldi/resources/vivaldi/style/custom.css
sudo sed -i '1s/^/@import "custom.css";/' /opt/vivaldi/resources/vivaldi/style/common.css
