# Defined in /tmp/fish_funced.sSQUSfEutj.fish @ line 2
function gitcd -w git
	set -l path $argv[-1]
    set -e argv[-1]
    if not test -d $path
        set_color red
        echo Error! $path is not a valid path.
        set_color normal
        return 1
    end
    if not test -d $path/.git
        set_color red
        echo Error! $path is not a valid git repository path.
        set_color normal
        return 1
    end
    if cd $path
        git $argv
        prevd
    end
end
