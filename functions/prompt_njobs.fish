function prompt_njobs -d 'Print number of jobs'
    set -l njobs ( count (jobs -g) )
    if test $njobs != 0
        set -l jobs (jobs -c | sort -u)
        echo -n "$fish_prompt_jobs"" [""$jobs""]"
    end
end

