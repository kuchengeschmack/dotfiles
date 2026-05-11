# My dotfiles

```bash
# Based on an original idea from: https://news.ycombinator.com/item?id=11071754

# My dotfiles can be replicated on a new system like:
git clone --bare <git-repo-url> $HOME/.dotfiles
alias dot='git --git-dir="$HOME/.dotfiles" --work-tree="$HOME"'
dot checkout
dot config --local status.showUntrackedFiles no
```
