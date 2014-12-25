if status --is-interactive
    if test "$TERM" = rxvt-unicode-256color
        set -lx TERM xterm-256color
    end
    set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS')

    if not set -Uq fish_user_config_set
        set_user_colors
    end

    if set -q DISPLAY
        if not xdpyinfo -display "$DISPLAY" >/dev/null ^/dev/null
            set_color red
            echo "Removing invalid display $DISPLAY"
            set_color normal
            set -e DISPLAY
        end
    end
end

