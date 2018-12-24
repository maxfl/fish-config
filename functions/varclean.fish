function varclean --description 'Remove duplicates from variable with specified delimiter' --argument sep var
	if begin
not set -q sep[1]
and not set -q var[1]
end
echo Not enough arguments
end
set -l newvar (string replace -ra '([/:])\1+' '$1' $$var | string split $sep | awk '!x[$0]++' | string join $sep)
set $var $newvar
end
