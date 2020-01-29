if not status --is-interactive
    exit
end

if set -q DISPLAY
    set -l test $DISPLAY
    if set -q DISPLAY[2]
        set test $DISPLAY[1]:$DISPLAY[2]
    end

    if type -q xdpyinfo
        if not xdpyinfo -display "$test" >/dev/null ^/dev/null
            set_color red
            echo "Removing invalid display '$test'"
            set_color normal
            set -e DISPLAY
        end
    else
        echo 'Install xdypinfo to test DISPLAY validity'
    end
end
