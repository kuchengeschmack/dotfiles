#!/usr/bin/env bash

# This script has been inspired from git@gitlab.com:engmark/tilde.git

# Install my tools
# apt install git zsh npm vim

# Install yarn package manager
# npm install --global yarn

# Change to zsh
chsh -s $(which zsh)

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dotfiles=(
    .bash_aliases
    .bashrc
    .git-prompt.sh
    .gitconfig
    .gitmessage
    .profile
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
