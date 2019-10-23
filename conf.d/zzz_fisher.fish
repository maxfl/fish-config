set -g fisher_path ~/.config/fish/packages

set --prepend fish_function_path $fish_function_path[1] $fisher_path/functions ~/.config/fish/functions_backup $fish_function_path[2..-1]
set --prepend fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2> /dev/null
end
