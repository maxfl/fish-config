function __commandline_toggle
    set -l cmd (commandline -b)
    if test "$cmd"
        __commandline_stash
    else
        __commandline_pop
    end
end
