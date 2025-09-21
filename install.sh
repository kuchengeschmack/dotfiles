#!/usr/bin/env bash

# This script has been inspired from git@gitlab.com:engmark/tilde.git

echo "This will erase your dot files in your home directory and install vundle plugin manager for vim."
read -p "Wish to continue (y/n) [y]: " answer
answer=${answer:-y}
if [[ ! "$answer" =~ ^[Yy]$ ]];
then
    echo "Aborting..."
    exit 1
fi

curl https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dotfiles=(
    .config/git
    .config/vim
    .config/zsh
)

for dotfile in "${dotfiles[@]}"; do
   ln --force --symbolic --verbose --directory "${script_dir}/${dotfile}" "${HOME}/.config"
done
   ln --force --symbolic --verbose "${HOME}/.config/git/.gitconfig" "${HOME}/.gitconfig"
   ln --force --symbolic --verbose "${HOME}/.config/vim/.vimrc" "${HOME}/.vimrc"
   ln --force --symbolic --verbose "${HOME}/.config/zsh/.zshrc" "${HOME}/.zshrc"

# Clone and install vundle plugin manager
if [ -z "$(find ~/.vim/bundle/Vundle.vim -mindepth 1 -maxdepth 1 | head -n1)" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vi -c :PluginInstall -c :q -c :q
    echo "Vundle installed and plugins are set up."
else
    echo "Vundle is already installed."
fi

echo "Setup complete. Enjoy!"
