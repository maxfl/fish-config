function ccat --description 'Colored cat'
	for f in $argv
		echo
		set_color green
		echo \>\>\>\>\>\> $f \<\<\<\<\<\<
		set_color green
		highlight -O xterm256 $f
	end


end
