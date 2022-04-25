#!/bin/bash

# After using the :PlugInstall, you should run 
# python3 install.py --js-completer --ts-completer
# to install semantic completion to js/ts

LOG_FILE=base.log
CURRENT_LINE=$LINENO

echo "Installing git..."
sudo apt-get update && sudo apt-get install git-all

echo "Installing python, cmake for the YouCompleteMe vim plugin..."
sudo apt install build-essential cmake python3-dev

echo "Installing lastest version of nvim..."
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update && sudo apt-get install neovim

echo "Installing curl..."
sudo apt update &&
sudo apt install curl

echo "Installing node..."
sudo apt update &&
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

import_vim_settings
import_vim_plug

echo "Installing brave browser..."
sudo apt install apt-transport-https &&
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update &&
sudo apt install brave-browser

function import_vim_settings {
	echo "Importing vim settings..."
	if [ ! -d ~/.config ]; then
		mkdir ~/.config && mkdir ~/.config/nvim && cd ~/.config/nvim
		curl https://codeload.github.com/barbozafernando/dotfiles/tar.gz/master | \tar -xz --strip=2 dotfiles-master/nvim
		echo "Vim settings imported successfully."
		return;
	fi

	if [ ! -d ~/.config/nvim ]; then
		mkdir ~/.config/nvim && cd ~/.config/nvim
		curl https://codeload.github.com/barbozafernando/dotfiles/tar.gz/master | \tar -xz --strip=2 dotfiles-master/nvim
		echo "Vim settings imported successfully."
		return;
	fi

	cd ~/.config/nvim && curl https://codeload.github.com/barbozafernando/dotfiles/tar.gz/master | \tar -xz --strip=2 dotfiles-master/nvim
	echo "Vim settings imported successfully."
}

function import_vim_plug {
	echo "Importing vim plug..."
	if [ ! -d ~/.config/nvim/autoload ]; then
		mkdir ~/.config/nvim/autoload
	fi

	if [ ! -e ~/.config/nvim/autoload/plug.vim ]; then
		curl -o ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		echo "Vim plug imported successfully."
	fi

	echo "Vim plug is already imported."
}

