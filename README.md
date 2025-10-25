# My dotfiles

```bash
# Clone this repository anywhere
git clone https://github.com/kuchengeschmack/dotfiles.git "${HOME}/dev/dotfiles"

# Get the git prompt script
curl https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh --output "${HOME}/.git-prompt.sh"

# Symlink you config files
ln -s "${HOME}/dev/dotfiles/.gitconfig" "${HOME}/.gitconfig"
ln -s "${HOME}/dev/dotfiles/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/dev/dotfiles/.zshrc" "${HOME}/.zshrc"

# Get vundle plugin manager for vim
git clone https://github.com/VundleVim/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"

# Install your vim plugins
vi -c :PluginInstall -c :q -c :q
```
