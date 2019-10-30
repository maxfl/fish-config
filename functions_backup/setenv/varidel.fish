function varidel --description 'Delete an element from environment variable' --argument-names var
    set -e argv[1]
    if not set -q $var
        echo Variable $var not found
        return 1
    end
    set $var (
        for el in $$var
            switch $el
            case $argv
            case '*'
                echo $el
            end
        end
    )
    count $$var > /dev/null; or set -e $var
end
