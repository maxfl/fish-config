function cmdload --description 'Load command line from a file' --argument filename
set -g __stash_command (cat $filename | sed '0,/^#!.*$/d; 0,/^\\s*$/d')
set -g __stash_command_position -1
set fish_bind_mode default
end
