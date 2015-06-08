function __ask_prefix
	set -l prefixes sudo 'gdb --args' 'gdb --args (which python)'
    commandline -C 0
    for prefix in $prefixes
    echo $prefix
    end | slmenu | read -l cmd
    commandline -i "$cmd "
end
