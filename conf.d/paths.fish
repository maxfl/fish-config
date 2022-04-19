for path in ~/.luarocks/bin ~/.local/bin ~/bin
    test -d $path
    and set fish_user_paths $path $fish_user_paths
end
