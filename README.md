# My local config

This repository stores my local config for my development tools:

- [git](https://git-scm.com/docs)
- [vim](https://vimhelp.org/)
- [bash](https://www.gnu.org/software/bash/manual/bash.html)
- [zsh](https://zsh.sourceforge.io/Doc/Release/zsh_toc.html)

It should be cloned in `~`.

```
# Install all my apps
sudo apt install git zsh npm vim

# Install yarn package manager
npm install --global yarn

# Change to zsh
chsh -s $(which zsh)

# Install vundle plugin manager for vim
git clone git@github.com:VundleVim/Vundle.vim.git
:PluginInstall # to be run into vim
