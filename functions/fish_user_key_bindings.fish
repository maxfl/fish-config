
function fish_user_key_bindings --description 'User key bindings for fish'
    set -l mode
    test "$fish_vi_key_bindings[1]" = 1
    if and functions -q fish_vi_key_bindings
        bind -e -a
        fish_vi_key_bindings
        if set -q fish_vi_cursor
            fish_vi_cursor
        end
        set fish_bind_mode insert
        #fish_default_key_bindings -M insert -m insert
        set mode -M insert -m insert

        #bind -M insert -e \cc
        #bind -M insert -m insert \cc kill-whole-line force-repaint
        bind $mode \cc 'commandline ""'
        bind $mode \ck kill-line

        bind -M insert -m insert \cf forward-char

        bind dG kill-whole-line
        bind cG -m insert kill-whole-line force-repaint

        bind -M insert -m insert \e\[H beginning-of-line
        bind -M insert -m insert \e\[F end-of-line

        bind gt __commandline_toggle
        bind ge __edit_cmd
        bind : 'read -l -s -m vi_command -p "echo $fish_bind_mode:" var; echo $var|source; commandline -f repaint'

        bind -M visual -m insert c default kill-selection end-selection force-repaint
        bind $mode \e\x7f backward-kill-path-component

        bind $mode \eb backward-word

        bind $mode \e\eOC nextd-or-forward-word
        bind $mode \e\eOD prevd-or-backward-word
        bind $mode \e\e\[C nextd-or-forward-word
        bind $mode \e\e\[D prevd-or-backward-word
        bind $mode \eO3C nextd-or-forward-word
        bind $mode \eO3D prevd-or-backward-word
        bind $mode \e\[3C nextd-or-forward-word
        bind $mode \e\[3D prevd-or-backward-word
        bind $mode \e\[1\;3C nextd-or-forward-word
        bind $mode \e\[1\;3D prevd-or-backward-word
        bind $mode \cl 'clear; commandline -f repaint'

        bind -m insert \n execute

        bind    yaE   'commandline | xsel'
        bind '"*yaE'  'commandline | xsel -p'
        bind '"+yaE'  'commandline | xsel -b'
        bind    graE  'commandline -- (xsel)'
        bind '"*graE' 'commandline -- (xsel -p)'
        bind '"+graE' 'commandline -- (xsel -b)'

        bind yy beginning-of-line kill-line yank

        bind -M visual \x24 end-of-line
        bind -M visual \x5e beginning-of-line
        bind -M visual 0 beginning-of-line
        bind -M visual g\x24 end-of-line
        bind -M visual g\x5e beginning-of-line
        bind -M visual \e\[H beginning-of-line
        bind -M visual \e\[F end-of-line

        bind -M visual k up-line
        bind -M visual j down-line

        bind -M visual -m insert  c kill-selection end-selection force-repaint
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

	bind $mode \e\n "commandline -i \n"
    bind $mode \eS __ask_prefix

	bind $mode \el __fish_list_current_token

    if set -q mode[1]
        bind -M insert -e \e
        bind -M insert -m default \e force-repaint
    end
end

