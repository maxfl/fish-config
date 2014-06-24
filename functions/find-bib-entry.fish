function find-bib-entry
	set -l pattern
	set -l tofile
	set -l toenv pattern
	for a in $argv
		switch $a
		case -a
			set toenv tofile
            continue
		end
		if set -q toenv[1]
			set $toenv $$toenv $a
			set toenv pattern
			continue
		end
	end

	set -l files
	for p in $pattern
		set files $files (eval "ls ~/yadisk/**/*$p*.bib")
	end
	echo Found (count $files) files:
	for f in $files
		echo "    $f"
	end

	if set -q tofile[1]
		echo Add to $tofile
		cat $files  | tee -a $tofile
	end
end
