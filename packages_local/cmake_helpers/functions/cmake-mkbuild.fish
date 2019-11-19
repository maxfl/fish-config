function cmake-mkbuild -d 'Prepare new cmake build folder' -a path
    set -e argv[1]
    set -l wd $PWD
    pushd (realpath $path)

    if count * > /dev/null
        command rm -rf *
    end
    and cmake $wd $argv

    popd
end
