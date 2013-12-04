function clearpath --description 'Delete unexisting paths from the PATH'
	set -l newp
	for i in $PATH
		contains $i $newp; and continue
        if not test -d $i
            if not set -q SSH_CONNECTION
                set_color red
                echo Deleting $i from \$PATH
                set_color normal
            end
            continue
		end
        set newp $newp $i
	end
    set PATH $newp
end
