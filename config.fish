if status --is-interactive
    if test "$TERM" = rxvt-unicode-256color
        set -lx TERM xterm-256color
    end
    set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS | tr : \\\n')

    if not set -Uq fish_user_config_set
        set_user_colors
    end
end

