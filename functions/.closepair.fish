function .closepair
	set -g pos (commandline -C)
	commandline -i $argv[1]$argv[2]
	commandline -C (expr $pos + 1)
end
