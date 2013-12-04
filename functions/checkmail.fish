function checkmail --description 'Check if there is new local mail'
	set -l n (mail -H ^/dev/null | grep '^.[UN]' | wc -l)
	set -l color green
	set -l ncolor -o yellow
	if test $n -gt 0
		test $n -gt 5
		and set color -o red
		set_color $color
		printf '%s %s%s%s %s\n' 'You have' (set_color $ncolor) $n (set_color $color) 'new messages!'
		set_color normal
		return 0
	end
	return 1


end
