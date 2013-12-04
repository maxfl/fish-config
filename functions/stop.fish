function stop --description 'Stop applications'
	for prg in $argv
echo Stopping $prg
pkill -STOP -x $prg
end
end
