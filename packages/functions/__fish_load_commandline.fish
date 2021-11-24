function __fish_load_commandline
    set -l filename (commandline -t)
    if test -r $filename
        commandline -- (cat $filename | sed -ne '/^[^ #]/,$p')
        commandline -f repaint
    else
        echo
        echo -- No such file: $filename
        echo
        commandline -f repaint
        return 1
    end
end
