function bell --description 'Emit bell'
	if set -q argv[1]
		notify-send $argv
	end
	command echo -e '\a'

end
