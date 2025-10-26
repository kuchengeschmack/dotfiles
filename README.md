# My dotfiles

```bash
# Export convenient environnement variables
export DEV="${HOME}/dev"
export DOTFILES="${DEV}/dotfiles"

# Clone this repository anywhere
git clone https://github.com/kuchengeschmack/dotfiles.git "${DOTFILES_DIR}"

# Get the git prompt script
curl https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh --output "${HOME}/.git-prompt.sh"

# Symlink you config files
ln -s "${DOTFILES}/.gitconfig" "${HOME}/.gitconfig"
ln -s "${DOTFILES}/.vimrc" "${HOME}/.vimrc"
ln -s "${DOTFILES}.zshrc" "${HOME}/.zshrc"

# Get vundle plugin manager for vim
git clone https://github.com/VundleVim/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"

# Install your vim plugins
vi -c :PluginInstall -c :q -c :q
```
