function fish_prompt --description 'Write out the prompt'
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
	end

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	set -l uc $fish_prompt_user
    set -l suffix '% '
    switch $USER
        case root
        set uc $fish_prompt_root
        set suffix '# '
    end
    set -l njobs (count (jobs -g) )
    if test $njobs = 0
        set njobs ""
    else
        set njobs "$fish_prompt_jobs"" ($njobs)"
    end
    echo (fish_prompt_vi)"$fish_prompt_user"$USER@"$__fish_prompt_hostname""$fish_prompt_normal":"$fish_prompt_cwd"(prompt_pwd)$njobs"$fish_prompt_normal"$suffix
end
