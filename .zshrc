# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Get bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Get profile
if [ -f ~/.profile ]; then
    . ~/.profile
fi

setopt PROMPT_SUBST

PROMPT='%F{red}%n%f%F{yellow}@%m%f %F{cyan}%~%f$(__git_ps1 " (%s)")%# '
