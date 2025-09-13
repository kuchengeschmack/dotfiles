#!/usr/bin/env bash

if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

# Install my tools
apt install git zsh npm vim

# Install yarn package manager
npm install --global yarn

# Change to zsh
chsh -s $(which zsh)

# Clone and install vundle plugin manager
if [ -z "$(find ~/.vim/bundle/Vundle.vim -mindepth 1 -maxdepth 1 | head -n1)" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vi -c :PluginInstall
else
    echo "Vundle is already installed."
fi
