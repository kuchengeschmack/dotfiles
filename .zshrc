# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Get bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Get profile
if [ -f ~/.profile ]; then
    . ~/.profile
fi

setopt PROMPT_SUBST

autoload -Uz compinit && compinit

PROMPT='%F{red}%n%f%F{yellow}@%m%f %F{cyan}%~%f$(__git_ps1 " (%s)") %# '
