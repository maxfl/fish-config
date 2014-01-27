set fish_function_path ~/.config/fish/redef_functions $fish_function_path
set fish_complete_path ~/.config/fish/new_completions $fish_complete_path

set PATH /home/(whoami)/bin/gcc $PATH /home/(whoami)/bin /usr/sbin /sbin
clearpath

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

    fish_vi_cursor
	set fish_bind_mode insert
end

