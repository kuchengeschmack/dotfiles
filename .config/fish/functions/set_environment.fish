function set_environment
    # XDG
    set -gx XDG_CURRENT_DESKTOP GNOME

    # Enable full git status in fish prompt
    set -g __fish_git_prompt_showdirtystate 1 # unstaged changes
    set -g __fish_git_prompt_showstagedstate 1 # staged changes
    set -g __fish_git_prompt_showuntrackedfiles 1
    set -g __fish_git_prompt_showupstream auto
    set -g __fish_git_prompt_showstashstate 1
    set -g __fish_git_prompt_color_branch green
    set -g __fish_git_prompt_color_dirtystate red
    set -g __fish_git_prompt_color_stagedstate yellow
    set -g __fish_git_prompt_color_untrackedfiles magenta
    set -g __fish_git_prompt_color_upstream cyan
end
