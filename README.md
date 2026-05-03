# My dotfiles

```bash
# My dotfiles can be replicated on a new system like:
git clone --bare <git-repo-url> $HOME/dev/.dotfiles
alias dotfiles='git --git-dir="$HOME/dev/.dotfiles --work-tree="$HOME"'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
