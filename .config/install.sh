#!/bin/sh

fishrc() {
	echo "=============================================="
	echo "            Copying Fish Config               "
	echo "----------------------------------------------"
	cp -Trv .config/ $HOME/.config/
	echo "=============================================="
}

fishrc

