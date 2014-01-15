set fish_function_path ~/.config/fish/redef_functions $fish_function_path
set fish_complete_path ~/.config/fish/new_completions $fish_complete_path

set PATH /home/(whoami)/bin/gcc $PATH /home/(whoami)/bin /usr/sbin /sbin
clearpath

setfirstexecutable EDITOR vim joe mcedit nano pico
setfirstexecutable BROWSER opera chromium luakit firefox iceweasel
setfirstexecutable PAGER vimpager most less more

if test "$TERM" = rxvt-unicode-256color
    set -lx TERM xterm-256color
    set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS | tr : \\\n')
else
    set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS | tr : \\\n')
end

if status --is-interactive
    #checkmail

    set -g __fish_git_prompt_showcolorhints 1
    set -g __fish_git_prompt_showdirtystate 1
    set -g __fish_git_prompt_show_informative_status 1
    set_user_colors

	set -g fish_cursor_insert
	set -g fish_cursor_default
	if set -q KONSOLE_PROFILE_NAME
		set fish_cursor_insert "\e]50;CursorShape=1\x7"
		set fish_cursor_default "\e]50;CursorShape=0\x7"
	else if set -q XTERM_LOCALE
		set fish_cursor_insert "\e[6 q"
		set fish_cursor_default "\e[2 q"
	end

	function fish_cursor_vi --on-variable fish_bind_mode
		switch $fish_bind_mode
			case insert
				echo -en $fish_cursor_insert
			case '*'
				echo -en $fish_cursor_default
		end
	end
	set fish_bind_mode insert

end

