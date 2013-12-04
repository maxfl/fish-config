function exitcode --description 'Print the exit code of the command' --no-scope-shadowing
	call $argv
	set -l st $status
	echo $st
	return $st

end
