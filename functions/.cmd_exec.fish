function .cmd_exec
	read -p 'echo exec\> ' -s -l cmd
	eval $cmd
	commandline -f repaint

end
