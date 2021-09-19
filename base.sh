#!/bin/bash

echo "Installing git..."
sudo apt-get update && sudo apt-get install git-all

echo "Installing vim..."
sudo apt-get update && sudo apt-get install neovim

sudo apt update && sudo apt upgrade

echo "Installing curl..."
sudo apt install curl

echo "Downloading my init.vim file..."
if [ -d ~/.config/nvim ]; then
  if [ ! -e ~/.config/nvim/init.vim ]; then
    curl -o ~/.config/nvim/init.vim https://raw.githubusercontent.com/barbozafernando/dotfiles/master/init.vim
  fi
else
  mkdir ~/.config/nvim
  curl -o ~/.config/nvim/init.vim https://raw.githubusercontent.com/barbozafernando/dotfiles/master/init.vim
fi

echo "Downloading vim-plug for vim..."
if [ -d ~/.config/nvim/autoload ]; then
  if [ ! -e ~/.config/nvim/autoload/plug.vim ]; then
    curl -o ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
else
  mkdir ~/.config/nvim/autoload
  curl -o ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
