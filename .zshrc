# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCONFLICSTATE="yes"
GIT_PS1_SHOWDIRTYSTATE="true"
GIT_PS1_SHOWSTASHSTATE="yes"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
GIT_PS1_SHOWCOLORHINTS="yes"

export GIT_PS1_SHOWUPSTREAM
export GIT_PS1_SHOWCONFLICSTATE
export GIT_PS1_SHOWDIRTYSTATE
export GIT_PS1_SHOWSTASHSTATE
export GIT_PS1_SHOWUNTRACKEDFILES
export GIT_PS1_SHOWCOLORHINTS

. ~/.git-prompt.sh

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
