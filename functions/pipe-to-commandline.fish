# Defined in /tmp/fish_funced.HDkJe5NHUy.fish @ line 2
function pipe-to-commandline --argument num
	read -l line
    if test "$num[1]"
        set num (math $num - 1)
        for i in (seq $num)
            read line
        end
    end
set line (string escape $line)
set cmd "function __pipe_to_commandline -e fish_postexec
commandline -r $line
functions -e __pipe_to_commandline
end"
    eval $cmd
end
