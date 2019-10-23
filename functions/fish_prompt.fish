# Defined in /tmp/fish_funced.uYxi64zP0f.fish @ line 2
function fish_prompt --description 'Write out the prompt'
	set -l __fish_prompt_last_status $status

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

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
    prompt_history
    prompt_git
	prompt_njobs
	#prompt_last_status
	prompt_date
    echo -n "$fish_prompt_normal"
    if test "$fish_prompt_multiline"
        echo
    end
    if test $__fish_prompt_last_status -ne 0
        set_color red
        echo -n '! '
        echo -n "$fish_prompt_normal"
    else
        echo -n '❯ '
    end
end
