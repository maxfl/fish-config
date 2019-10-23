function prompt_last_status -S --description 'Print last command exit status'
    if test "$__fish_prompt_last_status" != 0
        echo -n " ""$fish_prompt_status"[!"$__fish_prompt_last_status"]
    end
end
