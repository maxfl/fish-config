function fish_prompt --description 'Write out the prompt'
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname @(hostname|cut -d . -f 1)
	end

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	set -l suffix '% '
	set -l user ''
	switch "$USER"
	case root
		set user "$fish_prompt_root"root
		set suffix '# '

	case '*'
		set user "$fish_prompt_user"$USER
	end

	#echo -ne '\033[2K'
    if functions -q fish_vi_cursor_handle
        fish_vi_cursor_handle
    end
	prompt_vi '[%s] '
    echo -n "$fish_prompt_normal"
	prompt_njobs
	echo -n $user
	echo -n "$__fish_prompt_hostname"
	echo -n "$fish_prompt_normal":
	prompt_pwd
    echo -n "$fish_prompt_normal"
    switch $PWD
        case ~
        case '*'
        prompt_git '    [%s] '
    end
    echo -n "$fish_prompt_normal"
    if test "$fish_prompt_multiline"
        echo
    end
	echo -n $suffix
end
