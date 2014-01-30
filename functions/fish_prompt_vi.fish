function fish_prompt_vi
    switch "$fish_bind_mode"
        case insert
            echo -n "$fish_color_mode_insert""i] "
        case default
            echo -n "$fish_color_mode_default""n] "
        case visual
            echo -n "$fish_color_mode_visual""v] "
        case ''
            echo -n ''
        case '*'
            echo -n $fish_color_mode_default"$fish_bind_mode] "
    end
end

