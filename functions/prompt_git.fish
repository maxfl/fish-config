function prompt_git
    if not set -q git_prompt
        return
    end
    switch $PWD
        case ~
            return
    end
    __fish_git_prompt ' [%s]'
end
