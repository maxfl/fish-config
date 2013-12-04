function setfirstexecutable --description 'Set variable to first found executable' --argument-names env
	set -e argv[1]
	for e in $argv
		if which $e > /dev/null
			set -gx $env $e
			break
		end
	end
end

