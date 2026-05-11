function fish_prompt
    set -l last_status $status

    echo -n (date +"%H%M %Z")" "

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

    if test $last_status -ne 0
        echo -n (set_color red)" [$last_status]"(set_color normal)
    end

    echo -n " > "
end
