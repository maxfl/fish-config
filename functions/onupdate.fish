function onupdate
    set -l cmd
    set -l files
    set -l target files
    for arg in $argv
        switch $arg
            case --
                set target cmd
            case '*'
                set $target $$target $arg
        end
    end
    set -l main $files[1]
    while inotifywait $files
        $cmd $main
    end
end
