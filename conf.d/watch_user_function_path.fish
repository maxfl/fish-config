function __watch_user_function_path --description 'Monitor user function path and patch $fish_function_path' --on-variable fish_user_function_path
    if not set -q fish_user_function_path_backup
        set -g fish_user_function_path_backup
    end

    for oldpath in $fish_user_function_path_backup
        if set -l idx_user (contains $oldpath $fish_user_function_path)
            continue
        end
        if set -l idx (contains -i $oldpath $fish_function_path)
            #echo Erase: $oldpath "[$idx]"
            set -e fish_function_path[$idx]
        end
    end
    for newpath in $fish_user_function_path
        if contains $newpath $fish_function_path
            continue
        end
        #echo Prepend: $newpath
        set --prepend fish_function_path $newpath
    end
    set fish_user_function_path_backup $fish_user_function_path
    #echo Backup: $fish_user_function_path_backup
    #echo Functions: $fish_function_path
end
