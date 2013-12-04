function each --description 'Apply command to each file'
	set -l files
	set -l command
	set -l dest files
	for i in (seq (count $argv))
		if test "$argv[$i]" = --
			set dest command
		else
			set $dest $$dest $argv[$i]
		end
	end
	if not set -q command[1]
		set command $argv[-1]
		set -e files[-1]
	end
	for file in $files
		eval $command \"$file\" \&
	end



end
