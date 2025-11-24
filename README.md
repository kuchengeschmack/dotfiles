# My dotfiles

```bash
# Clone this repository anywhere
git clone https://github.com/kuchengeschmack/dotfiles.git
set DOTFILES $(pwd)/dotfiles

# Symlink your config files
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig
ln -s $DOTFILES/config.fish $HOME/.config/fish/config.fish
ln -s $DOTFILES/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
```
