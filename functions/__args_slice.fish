function __args_slice --no-scope-shadowing --argument var
    if not set -q "$var"[1]
        return
    end
    for a in $$var
        set -e "$var"[1]
        switch "$a"
            case --
            break
            case '*'
            echo \n$a | tail -n1
        end
    end
end
