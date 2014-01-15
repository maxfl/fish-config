if type bind_mode >/dev/null
    function fish_prompt_vi
        switch (bind_mode)
            case insert
                echo -n "$fish_color_mode_insert""[i] "
            case default
                echo -n "$fish_color_mode_default""[d] "
            case command
                echo -n "$fish_color_mode_command""[c] "
            case '*'
                echo -n "["(bind_mode)"] "
        end
    end
else
    function fish_prompt_vi
    end
end
