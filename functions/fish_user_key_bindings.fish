
function fish_user_key_bindings --description 'User key bindings for fish'
    set -l mode
    set -q fish_vi_key_bindings
    if and functions -q fish_vi_key_bindings
        fish_vi_key_bindings
        if set -q fish_vi_cursor
            fish_vi_cursor
        end
        set fish_bind_mode insert
        fish_default_key_bindings -M insert -m insert
        set mode -M insert -m insert

        bind -M insert -e \cc
        bind -M insert -m default \cc force-repaint
        bind \cc 'commandline ""'

        bind dG 'commandline ""'
        bind cG -m insert 'commandline ""' force-repaint

        bind gt __commandline_toggle
        bind ge .edit_cmd
        bind : 'read -l -s -m vi_command -p "echo $fish_bind_mode:" var; echo $var|source; commandline -f repaint'

        bind -M visual -m insert c default kill-selection end-selection force-repaint
        bind $mode \e\x7f backward-kill-path-component
    end

    bind $mode \eW '.cmd_wrap \( \)'

    bind $mode -k f1 .cmd_help
    bind $mode -k f4 __edit_cmd
    bind $mode \ee __edit_cmd
    bind $mode \e\x7f backward-kill-path-component
    bind $mode \cw backward-kill-word

    bind $mode \ej history-token-search-forward
    bind $mode \ek history-token-search-backward

    bind $mode \es __commandline_toggle
    
    bind $mode \ed "set -l cl (commandline -o); if set -q cl[1]; commandline -f kill-word; else; dirh; commandline -f repaint; end"

    if set -q mode[1]
        bind -M insert -e \e
        bind -M insert -m default \e force-repaint
    end
end

