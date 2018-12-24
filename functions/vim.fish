# Defined in /tmp/fish_funced.AucTQGAxxL.fish @ line 2
function vim
	if status is-interactive
        set_color red
        echo vim is called, use nvim instead
        set_color normal
        return 1
    end
	command nvim $argv
end
