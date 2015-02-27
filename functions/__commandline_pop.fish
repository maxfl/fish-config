function __commandline_pop
    if not set -q __stash_command
        return 
    end
    commandline -r -- $__stash_command
    if set -q __stash_command_position
        commandline -C $__stash_command_position
    end
    set -e __stash_command
    set -e __stash_command_position
end
