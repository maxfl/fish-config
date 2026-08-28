function pause-apps --description 'Pause apps (and resume after keypress)'
    echo Pause: $argv
    for app in $argv
        pkill -STOP $app
    end
    read -n1 -P "Awaiting keypress..."
    or return 1
    echo Continue: $argv
    for app in $argv
        pkill -CONT $app
    end
end
