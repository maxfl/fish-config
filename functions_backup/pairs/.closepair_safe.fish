function .closepair_safe
	if expr index (commandline -c) ' ' >  /dev/null
		.closepair $argv
	else
		commandline -i $argv[1]
	end


end
