
function fish_user_key_bindings --description 'User key bindings for fish'
    set -l mode
    if functions -q fish_vi_key_bindings
        fish_vi_key_bindings
        fish_default_key_bindings -M insert
        set mode -M insert
    end

    bind $mode \eW '.cmd_wrap \( \)'

	bind $mode -k f1 .cmd_help
	bind $mode -k f4 .edit_cmd
	bind $mode \ee .edit_cmd
    bind $mode \ex .cmd_exec
	bind $mode \e\x7f backward-kill-path-component
	bind $mode \cw backward-kill-word

    bind $mode \ej history-token-search-forward
    bind $mode \ek history-token-search-backward

    bind $mode \es __commandline_toggle
    
    #bind $mode \ed "set -l cl (commandline -o); if set -q cl[1]; commandline -f kill-word; else; dirh; commandline -f repaint; end"

    bind gt __commandline_toggle
    bind : 'read -l -s -m vi_command -p "echo (bind_mode):" var; echo $var|source; commandline -f repaint'
end

