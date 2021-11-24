function __setlist_pop -d 'Pop indexed value from list' -S -a var idx
    if not test "$idx"
        set idx -1
    end

    if not test "$var"
        set_color red
        echo "Variable name should be provided"
        set_color normal
        return 1
    end

    set -l varidx "$var"[$idx]
    if set -q $varidx
        echo -- $$var[1][$idx]
        set -e $varidx
    else
        return 1
    end
end

