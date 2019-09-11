function fish_user_key_bindings --description 'User key bindings for fish'
    fish_default_key_bindings -M insert
    fish_vi_key_bindings

    bind --user gt __commandline_toggle
    bind --user ge edit_command_buffer
    #bind : 'read -l -s -m vi_command -p "echo $fish_bind_mode:" var; echo $var|source; commandline -f repaint'

    # Open Dolphin in current folder
    bind --user gd 'dolphin (pwd)'

    # Yank to clipboard using xsel
    bind --user    yaE   'commandline | xsel'
    bind --user '"*yaE'  'commandline | xsel -p'
    bind --user '"+yaE'  'commandline | xsel -b'
    bind --user    graE  'commandline -- (xsel)'
    bind --user '"*graE' 'commandline -- (xsel -p)'
    bind --user '"+graE' 'commandline -- (xsel -b)'

    # Wrap command line with ()
    bind --user \eW '.cmd_wrap \( \)'

    bind --user -M insert -m insert \cn history-search-forward
    bind --user -M insert -m insert \cp history-search-backward
    bind --user -M insert -m insert \ej history-token-search-forward
    bind --user -M insert -m insert \ek history-token-search-backward
    bind --user -M insert -m insert \ef forward-word
    bind --user -M insert -m insert \eb backward-word
    bind --user -M insert -m insert \cf accept-autosuggestion forward-char
end

