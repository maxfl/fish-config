setfirstexecutable EDITOR vim joe mcedit nano pico
setfirstexecutable BROWSER opera chromium luakit firefox iceweasel
setfirstexecutable PAGER vimpager most less more

if status --is-interactive
    if test "$TERM" = rxvt-unicode-256color
        set -lx TERM xterm-256color
        set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS | tr : \\\n')
    else
        set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS | tr : \\\n')
    end

    if not set -Uq fish_user_config_set
        set_user_colors
    end
end

