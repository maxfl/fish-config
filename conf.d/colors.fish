if not status --is-interactive
    exit
end

set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS')
if not set -Uq fish_user_config_set
    set_user_colors
end
