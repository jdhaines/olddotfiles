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
		#curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    fish -c "curl -sL --insecure https://git.io/fisher | source && fisher install jorgebucaran/fisher"
	echo "=============================================="
	echo "            Install Plugins                   "
	echo "----------------------------------------------"
		#fisher install IlanCosman/tide@v5
		#fisher install rkbk60/onedark-fish
    fish -c "fisher install IlanCosman/tide@v5"
    fish -c "fisher install jorgebucaran/nvm.fish"
	echo "=============================================="
	echo "            Copying Fish Config               "
	echo "----------------------------------------------"
		#cp -Trv .config/ $HOME/.config/
		#rm $HOME/.config/fish/conf.d/omf.fish
    fish -c "echo 1 2 1 1 2 2 y | tide configure >/dev/null"
    # add fish as a login shell
    command -v fish | sudo tee -a /etc/shells
    # use fish as default shell
    sudo chsh -s $(which fish) $(whoami)
	echo "=============================================="
	echo "            Done!                             "
	echo "=============================================="
}

fishrc

