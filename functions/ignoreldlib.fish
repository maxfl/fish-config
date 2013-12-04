function ignoreldlib --description 'Make an alias for the program to run ignoring the LD_LIBRARY_PATH'
	for cmd in $argv
eval "
    function $cmd -d 'Run $cmd ignoring LD_LIBRARY_PATH'
        set -l LD_LIBRARY_PATH
        command $cmd \$argv
    end
"
end

end
