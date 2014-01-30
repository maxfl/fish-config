function prompt_vi --argument mask
	switch "$fish_bind_mode"
	case insert
		echo -n "$fish_color_mode_insert"
		printf $mask i
	case default
		echo -n "$fish_color_mode_default"
        printf $mask n
	case visual
		echo -n "$fish_color_mode_visual"
        printf $mask v
	case ''
		echo -n ''
	case '*'
		echo -n "$fish_color_mode_default"
        printf $mask $fish_bind_mode
	end
end
