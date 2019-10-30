function extsource --description 'Source fish/sh/csh file (use exec command)' --argument-names file type
	set -l csh tcsh
	set -l tcsh tcsh
	set -l sh bash
	set -l dash dash
	set -l shell sh
	set -l fish fish

	set -q type[1]; or set -l type (extname $file)

	set -l sh $$type
	if test $sh
		eval "exec $sh -c 'source $file; exec fish'"
	else
		echo Unknown source type $file \($type\)
	end


end
