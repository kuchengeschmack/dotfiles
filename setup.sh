#!/usr/bin/env bash

# This script has been inspired from git@gitlab.com:engmark/tilde.git

printf "This will erase your dot files in your home directory.\nWish to continue ? (y/n)"
read input
if ! [ "$input" == "y" ]
then
    exit 1
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dotfiles=(
    .git-prompt.sh
    .gitconfig
    .vimrc
    .zshrc
)

for dotfile in "${dotfiles[@]}"; do
    ln --force --symbolic --verbose "${script_dir}/${dotfile}" "${HOME}"
done

# Clone and install vundle plugin manager
if [ -z "$(find ~/.vim/bundle/Vundle.vim -mindepth 1 -maxdepth 1 | head -n1)" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vi -c :PluginInstall
else
    echo "Vundle is already installed."
fi
