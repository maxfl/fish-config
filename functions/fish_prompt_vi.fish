function fish_prompt_vi
    switch "$fish_bind_mode"
        case insert
            echo "$fish_color_mode_insert""i] "
        case default
            echo "$fish_color_mode_default""n] "
        case ''
            echo ''
        case '*'
            echo $fish_color_mode_default"$fish_bind_mode] "
    end
end

