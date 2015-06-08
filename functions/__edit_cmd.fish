function __edit_cmd --description 'Edit cmdline in editor'
	set -l f (mktemp --suffix=.fish)
	set -l p (commandline -C)
	commandline -b > $f
	vim $f
	echo commandline -r (cat $f | sed 's/^\s\+//')
	commandline -r -- (cat $f | sed 's/^\s\+//')
	commandline -C $p
	rm $f
end
