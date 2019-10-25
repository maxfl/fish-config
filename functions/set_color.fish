# Defined in /tmp/fish_funced.bFhJOkxyWX.fish @ line 2
function set_color
	for arg in $argv
if string match -q \e'*' -- $arg
echo -ne $arg
return
end
end
builtin set_color $argv
end
