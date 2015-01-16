function tocmd
	commandline -r
	while read -l line
		echo $line
		commandline -a $line
		commandline -a \n
	end
end
