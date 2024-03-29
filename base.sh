#!/bin/bash

# After using the :PlugInstall, you should run 
# python3 install.py --js-completer --ts-completer
# to install semantic completion to js/ts

LOG_FILE=base.txt

sudo apt-get update && sudo apt-get install git-all -y
if [ $? -eq 0 ]; then
   echo "Git installed..." >> $LOG_FILE
else
   echo "Fail to install git." >> $LOG_FILE
fi

sudo apt install build-essential cmake python3-dev -y
if [ $? -eq 0 ]; then
   echo "Python and cmake installed..." >> $LOG_FILE
else
   echo "Fail to install python and cmake.." >> $LOG_FILE
fi

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update && sudo apt-get install neovim -y
if [ $? -eq 0 ]; then
   echo "NVIM installed..." >> $LOG_FILE
else
   echo "Fail to install nvim..." >> $LOG_FILE
fi

sudo apt update && sudo apt install curl -y
if [ $? -eq 0 ]; then
   echo "curl installed..." >> $LOG_FILE
else
   echo "Fail to install curl..." >> $LOG_FILE
fi

sudo apt update && curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
if [ $? -eq 0 ]; then
   echo "Node installed..." >> $LOG_FILE
else
   echo "Fail to install node..." >> $LOG_FILE
fi

sudo apt-get update && sudo apt-get install build-essential -y

function import_vim_settings {
  if [ ! -d ~/.config ]; then
    mkdir ~/.config
  fi

  if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
  fi

  cd ~/.config/nvim && curl https://codeload.github.com/barbozafernando/dotfiles/tar.gz/master | \tar -xz --strip=2 dotfiles-master/nvim

  if [ $? -eq 0 ]; then
    echo "Vim settings imported successfully." >> $LOG_FILE
  else
     echo "Fail to import vim settings." >> $LOG_FILE
  fi
}

function import_vim_plug {
  if [ ! -d ~/.config/nvim/autoload ]; then
    mkdir ~/.config/nvim/autoload
  fi

  if [ -e ~/.config/nvim/autoload/plug.vim ]; then
    return
  fi

  curl -o ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  if [ $? -eq 0 ]; then
    echo "Vim plug was imported successfully." >> $LOG_FILE
  else
    echo "Fail to import vim plug." >> $LOG_FILE
  fi
}

import_vim_settings
import_vim_plug

sudo apt update && sudo apt install zsh -y
if [ $? -eq 0 ]; then
   echo "zsh installed..." >> $LOG_FILE
else
   echo "Fail to install zsh..." >> $LOG_FILE
fi

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
if [ $? -eq 0 ]; then
   echo "Oh My Zsh installed..." >> $LOG_FILE
else
   echo "Fail to install Oh My Zsh..." >> $LOG_FILE
fi

sudo apt update && sudo apt-get install ripgrep -y
