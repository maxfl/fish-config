function screen --description 'Call screen with smaller TERM variable'
	set -lx TERM rxvt-256color
    command screen $argv
end
