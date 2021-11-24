function __setlist_rm_value -d 'Remove value from list' -S -a var val
    if not test "$var" -o "$val"
        set_color red
        echo "Variable name and value should be provided"
        set_color normal
        return 1
    end

    if set -l idx (contains -i -- $val $$var)
        set -e "$var"[$idx]
    else
        return 1
    end
end

