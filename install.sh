#!/bin/sh

fishrc() {
	echo "=============================================="
	echo "            Update Fish Install               "
	echo "----------------------------------------------"
		sudo add-apt-repository ppa:fish-shell/release-3
		sudo apt-get update
		sudo apt-get -y install fish
	echo "=============================================="
	echo "            Install Fisher Manager            "
	echo "----------------------------------------------"
		curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
	echo "=============================================="
	echo "            Install Plugins                   "
	echo "----------------------------------------------"
		fisher install IlanCosman/tide@v5
		fisher install rkbk60/onedark-fish
	echo "=============================================="
	echo "            Copying Fish Config               "
	echo "----------------------------------------------"
		cp -Trv .config/ $HOME/.config/
		rm $HOME/.config/fish/conf.d/omf.fish
	echo "=============================================="
	echo "            Done!                             "
	echo "=============================================="
}

fishrc

