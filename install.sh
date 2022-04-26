#!/bin/sh

fishrc() {
	echo "=============================================="
	echo "            Copying Fish Config               "
	echo "----------------------------------------------"
	cp -Trv .config/ $HOME/.config/
	echo "=============================================="
	echo "            Install Fisher Manager            "
	echo "----------------------------------------------"
	curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
	echo "=============================================="
	echo "            Install Plugins                   "
	echo "----------------------------------------------"
	fisher install rkbk60/onedark-fish
	fisher install IlanCosman/tide@v5
	echo "=============================================="
}

fishrc

