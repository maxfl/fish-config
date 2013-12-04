function .cmd_wrap --description 'Wrap commandline in pair' --argument left right
	commandline -i $left
	commandline -a $right


end
