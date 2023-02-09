#!/bin/bash

fishrc() {
		sudo add-apt-repository ppa:fish-shell/release-3
		sudo apt update
		sudo apt -y install fish
    fish -c "curl -sL --insecure https://git.io/fisher | source && fisher install jorgebucaran/fisher"
    fish -c "fisher install IlanCosman/tide@v5"
    fish -c "fisher install jorgebucaran/nvm.fish"
		#cp -Trv .config/ $HOME/.config/
		#rm $HOME/.config/fish/conf.d/omf.fish
    fish -c "echo 1 2 1 1 2 2 y | tide configure >/dev/null"
    # add fish as a login shell
    command -v fish | sudo tee -a /etc/shells
    # use fish as default shell
    sudo chsh -s $(which fish) $(whoami)
}

jetbrains() {
  mkdir -p ~/.local/share/fonts
  cd ~/.local/share/fonts && curl -fLo "Jet Brains Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
  fc-cache -f -v # rebuild font cache
}

fishrc
jetbrains



