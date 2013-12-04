
function fish_user_key_bindings --description 'User key bindings for fish'
    #vi_mode_insert

    #set -l __closedpairs \( \{ \[ "'" '"'
    #set -l __closedpairs_names p b a q1 q2
	#for i in (seq (count $__closedpairs))
        #bind \e$__closedpairs[$i] .close_$__closedpairs_names[$i]
    #end
    bind \eW '.cmd_wrap \( \)'

	bind -k f1 .cmd_help
	bind -k f4 .edit_cmd
	bind \ee .edit_cmd
    bind \ex .cmd_exec
	bind \e\x7f backward-kill-path-component
	bind \cw backward-kill-word

    bind \ej history-token-search-forward
    bind \ek history-token-search-backward
    #bind \es .runsudo
    bind \es __commandline_toggle
    bind \er 'commandline -C 0; commandline -i "run "; commandline -f execute'
    
    bind \ed "set -l cl (commandline -o); if set -q cl[1]; commandline -f kill-word; else; dirh; commandline -f repaint; end"
end

