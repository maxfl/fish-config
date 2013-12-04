function sete --description 'Set specific environment'
	count $argv > /dev/null
	or return
	set -l action set
	set -l args
	set -l env
	set -l command
	for arg in $argv
		switch $arg
		case -e
			set action unset

		case '--*'
			set env (echo $arg|sed 's/--//')

		case '*'
			set args $args $arg
		end
	end
	set command .$action$env

	if not functions -q $command
		echo Can not $action the $env environment "($command)"
		return 1
	end

	switch $action
	case set
		if functions -q .unset$env
            eval .unset$env
			echo Unset previous $env environment
		end
		echo Setting $env environment to $args
		call $command $args

	case unset
		if eval $command
			echo Unset previous $env environment
		end

	case '*'
		echo sete: should not happen
	end


end
