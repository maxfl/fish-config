function .cmd_help --description 'Print current command help'
    set -l cm (commandline -pt)
    echo ''
    eval $cm --help
    commandline -f repaint
end
