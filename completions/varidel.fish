complete -c varidel -d 'Delete a variable from the array' -n '__fish_is_first_token' -xa '(set -n)'
complete -c varidel -n 'not __fish_is_first_token' -xa '(set -l var (commandline -po)[2]; for v in $$var; echo $v; end)'
