function run --description 'Run program in background without output'
	call -r ' > /dev/null 2>&1 &' $argv
end

