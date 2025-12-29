function fish_user_key_bindings --description 'User key bindings for fish'
    fish_default_key_bindings -M insert
    fish_vi_key_bindings

    bind --user gt __commandline_toggle
    bind --user ge edit_command_buffer
    bind --user gl __fish_load_commandline
    #bind : 'read -l -s -m vi_command -p "echo $fish_bind_mode:" var; echo $var|source; commandline -f repaint'

    #
    # Fix default mappings
    #
    bind --user -M insert \cw backward-kill-word
    bind --user \cw backward-kill-word
    bind --user -M visual \cw backward-kill-word
    bind --user -M insert \ew backward-kill-path-component

    #
    # OS shortcuts
    #
    # Open Dolphin in current folder
    bind --user gd 'dolphin (pwd)&; disown (jobs -lp)'

    # Wrap command line with ()
    bind --user \eW '.cmd_wrap \( \)'

    bind --user -M insert -m insert \cn history-search-forward
    bind --user -M insert -m insert \cp history-search-backward
    bind --user -M insert -m insert \ej history-token-search-forward
    bind --user -M insert -m insert \ek history-token-search-backward
    bind --user -M insert -m insert \ef forward-word
    bind --user -M insert -m insert \eb backward-word
    bind --user -M insert -m insert \cf accept-autosuggestion forward-char

    bind --user -M insert -m default \co ''

    #if set -q NVIM_LISTEN_ADDRESS
        ## Escape from normal mode to nvim
        #bind --user -M default \e "set fish_bind_mode insert; commandline -f repaint; nvr --remote-send '<C-o>'"
    #end
end

