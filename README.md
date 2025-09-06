# My linux setup

```
# Clone this repository
git clone git@github.com:kuchengeschmack/user.git ~

# Install my tools
sudo apt install git zsh npm vim

# Install yarn package manager
npm install --global yarn

# Change to zsh
chsh -s $(which zsh)

# Install vundle plugin manager for vim
git clone git@github.com:VundleVim/Vundle.vim.git ~

# Install vim plugins via vundle
vi -c :PluginInstall
```
