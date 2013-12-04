function cont --description 'Continue applications'
	for prg in $argv
echo Continuing $prg
pkill -Cont -x $prg
end
end
