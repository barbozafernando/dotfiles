#!/bin/bash

# After using the :PlugInstall, you should run 
# python3 install.py --js-completer --ts-completer
# to install semantic completion to js/ts

echo "Installing git..."
sudo apt-get update && sudo apt-get install git-all

echo "Installing python, cmake for the YouCompleteMe vim plugin..."
sudo apt install build-essential cmake python3-dev

echo "Installing vim..."
sudo apt-get update && sudo apt-get install neovim

sudo apt update && sudo apt upgrade

echo "Installing curl..."
sudo apt install curl

echo "Installing node..."
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

if [ -d ~/.config/nvim ]; then
  if [ ! -e ~/.config/nvim/init.vim ]; then
    echo "Downloading my vim settings files..."
    cd ~/.config/nvim
    curl https://codeload.github.com/barbozafernando/dotfiles/tar.gz/master | \tar -xz --strip=2 dotfiles-master/nvim
  fi
else
  echo "Downloading my vim settings files..."
  mkdir ~/.config/nvim && cd ~/.config/nvim
  curl https://codeload.github.com/barbozafernando/dotfiles/tar.gz/master | \tar -xz --strip=2 dotfiles-master/nvim
fi

if [ -d ~/.config/nvim/autoload ]; then
  if [ ! -e ~/.config/nvim/autoload/plug.vim ]; then
    echo "Downloading vim-plug for vim..."
    curl -o ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
else
  echo "Downloading vim-plug for vim..."
  mkdir ~/.config/nvim/autoload
  curl -o ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Didnt test it yet
echo "Installing brave browser..."
sudo apt install apt-transport-https 
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
