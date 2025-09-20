#!/usr/bin/env bash

# This script has been inspired from git@gitlab.com:engmark/tilde.git

echo "This will erase your dot files in your home directory and install vundle plugin manager for vim."
read -p "Wish to continue (y/n) [n]: " answer
answer=${answer:-n}
if [[ ! "$answer" =~ ^[Yy]$ ]];
then
    echo "Aborting..."
    exit 1
fi

echo "Continuing..."
echo "Setting up dot files..."

echo "Downloading .git-prompt.sh from Github..."
curl --silent https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
echo ".git-prompt has been created in ${HOME}."

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dotfiles=(
    .gitconfig
    .vimrc
    .zshrc
)

for dotfile in "${dotfiles[@]}"; do
    ln --force --symbolic --verbose "${script_dir}/${dotfile}" "${HOME}"
done

echo "Dot files set up."

echo "Setting up Vundle plugin manager for vim..."

# Clone and install vundle plugin manager
if [ -z "$(find ~/.vim/bundle/Vundle.vim -mindepth 1 -maxdepth 1 | head -n1)" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vi -c :PluginInstall -c :q -c :q
    echo "Vundle installed and plugins are set up."
else
    echo "Vundle is already installed."
fi

echo "Setup complete. Enjoy!"
