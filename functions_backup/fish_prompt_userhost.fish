function fish_prompt_userhost
	set -l user ''
	switch "$USER"
	case root
		set user "$fish_prompt_root"root
		set suffix '# '

	case '*'
		set user "$fish_prompt_user"$USER
	end

	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname @(hostname|cut -d . -f 1)
	end

	echo -n "$fish_prompt_normal"
    echo -n $user
    echo -n "$__fish_prompt_hostname"
end
