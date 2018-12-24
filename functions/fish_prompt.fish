# Defined in /tmp/fish_funced.O7P5kba1th.fish @ line 2
function fish_prompt --description 'Write out the prompt'
	set -l __fish_prompt_last_status $status

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	set -l suffix '% '

	#echo -ne '\033[2K'
    if functions -q fish_vi_cursor_handle
        fish_vi_cursor_handle
    end
	#prompt_vi '[%s] '
    fish_prompt_label
    fish_prompt_userhost
	echo -n "$fish_prompt_normal":
	prompt_pwd
    echo -n "$fish_prompt_normal"
    switch $PWD
        case ~
        case '*'
        prompt_git ' [%s]'
    end
	prompt_njobs
	prompt_last_status
	prompt_date
    echo -n "$fish_prompt_normal"
    if test "$fish_prompt_multiline"
        echo
    end
	echo -n $suffix
end
