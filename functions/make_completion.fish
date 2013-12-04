function make_completion --argument alias command
	complete -c $alias -xa "(
        set -l cmd (commandline -p | sed -e 's/^\S\+/$command/' );
        complete -C\"\$cmd\";
    )"
end
