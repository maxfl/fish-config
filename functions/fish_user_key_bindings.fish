function fish_user_key_bindings --description 'User key bindings for fish'
    fish_default_key_bindings -M insert
    fish_vi_key_bindings

    bind gt __commandline_toggle
    bind ge __edit_cmd
    #bind : 'read -l -s -m vi_command -p "echo $fish_bind_mode:" var; echo $var|source; commandline -f repaint'

    bind    yaE   'commandline | xsel'
    bind '"*yaE'  'commandline | xsel -p'
    bind '"+yaE'  'commandline | xsel -b'
    bind    graE  'commandline -- (xsel)'
    bind '"*graE' 'commandline -- (xsel -p)'
    bind '"+graE' 'commandline -- (xsel -b)'

    bind \eW '.cmd_wrap \( \)'

    bind -M insert -m insert \cn history-search-forward
    bind -M insert -m insert \cp history-search-backward
    bind -M insert -m insert \ej history-token-search-forward
    bind -M insert -m insert \ek history-token-search-backward
    bind -M insert -m insert \ef forward-word
    bind -M insert -m insert \eb backward-word
    bind -M insert -m insert \cf accept-autosuggestion forward-char
end

