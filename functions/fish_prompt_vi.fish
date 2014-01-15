set -g fish_cursor_default
set -g fish_cursor_insert

if set -q KONSOLE_PROFILE_NAME
    set fish_cursor_insert "\e]50;CursorShape=1\x7"
    set fish_cursor_default "\e]50;CursorShape=0\x7"
end

if type bind_mode >/dev/null
    function fish_prompt_vi
        switch (bind_mode)
            case insert
                echo -n "$fish_color_mode_insert""[i] "
                echo -en $fish_cursor_insert
            case default
                echo -n "$fish_color_mode_default""[n] "
                echo -en $fish_cursor_default
            case '*'
                echo -n $fish_color_mode_default"["(bind_mode)"] "
                echo -en $fish_cursor_default
        end
    end
else
    function fish_prompt_vi
    end
end
