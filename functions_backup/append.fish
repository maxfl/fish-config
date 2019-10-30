function append --description 'Append element to a variable' --no-scope-shadowing --argument var
	set -e argv[1]
set $var $$var $argv
end
