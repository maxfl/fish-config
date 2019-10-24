function set_color
	for arg in $argv
if string match -q \e'*' -- $arg
echo -n $arg
return
end
end
builtin set_color $argv
end
