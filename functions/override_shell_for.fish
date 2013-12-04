function override_shell_for --description 'Override SHELL variable for the following apps'
	set -l newshell (cat /etc/passwd | grep $USER | sed 's/^.\+://')
	switch $newshell
	case '*fish*'
		set -e newshell[1]
		for sh in bash zsh dash sh csh tcsh ksh
			if type -f $sh >  /dev/null
				set newshell (type -fp $sh)
				break
			end
		end
	end
	if not set -q newshell[1]
		return 1
	end
	for app in $argv
		type --no-functions $argv >  /dev/null
		or continue		# coninue if there are no such binary
		functions -q $argv
		and continue		# continue if function is already defined

		#echo redefine $app
		echo "
function $app
    set -lx SHELL $newshell
    command $app \$argv
end
"  | .
	end
end
