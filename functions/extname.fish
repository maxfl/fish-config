function extname
	echo $argv[1] | sed "s/^.\+\.//"
end
