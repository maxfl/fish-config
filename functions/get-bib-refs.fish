function get-bib-refs
	cat $argv | sed '/^\([^@]\|$\)/d; s/^@.*{\(.*\),/\1/' | sort -u
end
