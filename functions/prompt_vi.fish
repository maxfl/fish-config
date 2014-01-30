function prompt_vi --argument pre post
	set -q post[1]; or set post "]"
	switch "$fish_bind_mode"
        case insert
            echo -n "$fish_color_mode_insert""$pre"i"$post"" "
        case default
            echo -n "$fish_color_mode_default""$pre"n"$post"" "
        case visual
            echo -n "$fish_color_mode_visual""$pre"v"$post"" "
        case ''
            echo -n ''
        case '*'
            echo -n "$fish_color_mode_default""$pre"$fish_bind_mode"$post"" "
    end
end
