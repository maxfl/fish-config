function env-to-colon --argument varname
	set -q $varname; or return
set -l oldvar $$varname
set -l newvar $oldvar[1]
set -e oldvar[1]
for str in $oldvar
set newvar "$newvar:$str"
end
set $varname $newvar
end
