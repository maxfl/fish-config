function fish_prompt --description 'Write out the prompt'
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname @(hostname|cut -d . -f 1)
        switch "$__fish_prompt_hostname"
            case @myhost
            set __fish_prompt_hostname ""
        end
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    set -l suffix "$fish_prompt_normal"'% '
    set -l user ''
    switch "$USER"
        case gonchar

        case root
        set user "$fish_prompt_root"root
        set suffix "$fish_prompt_normal"'# '

        case '*'
        set user "$fish_prompt_user"$USER
    end

    fish_prompt_vi
    echo -n $user
    echo -n "$__fish_prompt_hostname"
    echo -n "$fish_prompt_normal":
    prompt_pwd
    prompt_njobs
    echo -n $suffix
end
