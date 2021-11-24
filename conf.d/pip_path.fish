set -l path ~/.local/bin
test -d $path
set fish_user_paths $path $fish_user_paths
