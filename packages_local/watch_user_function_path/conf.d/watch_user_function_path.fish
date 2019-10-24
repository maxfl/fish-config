function __watch_user_function_path --description 'Monitor user function path and patch $fish_function_path' --on-variable fish_user_function_path
    if not set -q fish_user_function_path_backup
        set -g fish_user_function_path_backup
    end

    for oldpath in $fish_user_function_path_backup
        if contains $oldpath $fish_user_function_path
            continue
        end
        setlist rm-value fish_function_path $oldpath
    end
    for newpath in $fish_user_function_path[-1..1]
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
