# My dotfiles

```bash
# Based on an original idea from: https://news.ycombinator.com/item?id=11071754

# My dotfiles can be replicated on a new system like:
git clone --bare <git-repo-url> $HOME/dev/.dotfiles
alias dotfiles='git --git-dir="$HOME/dev/.dotfiles --work-tree="$HOME"'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
