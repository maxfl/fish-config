function __commandline_stash
    set -g __stash_command_position (commandline -C)
    set -g __stash_command (commandline -b)
    commandline -r ""
end
