# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# XDG
export XDG_CURRENT_DESKTOP=GNOME

# Git prompt
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCONFLICSTATE="yes"
export GIT_PS1_SHOWDIRTYSTATE="true"
export GIT_PS1_SHOWSTASHSTATE="yes"
export GIT_PS1_SHOWUNTRACKEDFILES="yes"

# Custom environment variables
export DEV="${HOME}/dev"
export DOTFILES="${DEV}/dotfiles"

# Get bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Get profile
if [ -f ~/.profile ]; then
    . ~/.profile
fi

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls --color=auto'
alias ll='ls --all -l --classify'
alias cl='clear'
alias github='xdg-open https://github.com'
alias dev='cd ${DEV}'
alias dotfiles='cd ${DOTFILES}'

sh ${HOME}/.git-prompt.sh

setopt PROMPT_SUBST

autoload -Uz compinit && compinit

PROMPT='%F{red}%n%f%F{yellow}@%m%f%F{cyan}:%~%f$(__git_ps1 " (%s)") %# '

