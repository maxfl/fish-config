function ipython-pdb --description 'Run ipython with --pdb flag, search PATH for the script if needed' --argument script
    set -e argv[1]
    if not test -x $script
        set script (which $script)
        or begin
            echo Unable to locate executable $script
            return 1
        end

        test -x $script
        or begin
            echo Invalid executable $script
            return 2
        end
    end

    ipython --pdb -- $script $argv
end
