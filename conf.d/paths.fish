set paths \
    ~/.luarocks/bin \
    ~/.local/bin \
    ~/.cargo/bin \
    ~/bin
for path in $paths
    test -d $path
    and set fish_user_paths $path $fish_user_paths
end
