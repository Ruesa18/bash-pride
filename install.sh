#!/bin/bash
# Author: Sandro Rüfenacht
# Date: 16.08.2022

echo Installing...
cp pride.sh /usr/local/bin/pride
chmod +x /usr/local/bin/pride

if [ ! -d "/usr/local/bin/pride-files" ]; then
	mkdir /usr/local/bin/pride-files
fi

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
fi
if [ ! -d "$HOME/.config/pride-files" ]; then
	mkdir $HOME/.config/pride-files
fi

cp pride-files/* /usr/local/bin/pride-files/

echo "End of script"

