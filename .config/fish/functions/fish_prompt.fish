function fish_prompt
    echo -n (date +%H%M)" "

    set_color green
    printf "%s" (whoami)
    
    set_color yellow
    printf "@%s" (hostname -s)
    
    set_color red
    printf ":%s" (prompt_pwd)

    # Git branch similar to __git_ps1

    set_color normal
    set git (__fish_git_prompt "%s")

    if test -n "$git"
        echo -n " ($git)"
    end

    echo -n " [$status]"

    echo -n " \$ "
end
