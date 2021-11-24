function cmake-mkbuild --description 'Prepare new cmake build folder' --argument path
    set -e argv[1]

    set path (realpath $path)
    set -l wd $PWD

    test -d "$path"
    or mkdir -pv $path
    and pushd $path
    or begin
        echo Should provide valid path: $path
        ls -l $path
        return 1
    end

    count * > /dev/null
    and command rm -rf *

    cmake $wd $argv

    popd
end
