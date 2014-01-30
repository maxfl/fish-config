function prompt_njobs -d 'Print number of jobs'
    set -l njobs ( count (jobs -g) )
    if test $njobs != 0
        echo -n "$fish_prompt_jobs"" ($njobs)"
    end
end

