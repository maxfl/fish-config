function __fish_complete_gist
    gist -l | sed -r 's|^.+\\/||; s/ /	/'
end

complete -c gist --short r --long read   -xa '(__fish_complete_gist)' --description 'Read the gist and print'
complete -c gist --short u --long update -xa '(__fish_complete_gist)' --description 'Update an existing gist'
complete -c gist --short l --long list --description 'List all gists for the user'
complete -c gist --short h --long help --description 'Print the help'

