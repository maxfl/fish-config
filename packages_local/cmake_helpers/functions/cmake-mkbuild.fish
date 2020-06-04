function cmake-mkbuild -d 'Prepare new cmake build folder' -a path
    set -e argv[1]

    if not test "$path"
        echo 'Should provide valid path'
        return 1
    end

    set -l wd $PWD
    if not pushd (realpath $path)
        popd
        echo 'Should provide valid path'
        return 1
    end

    if count * > /dev/null
        command rm -rf *
    end
    and cmake $wd $argv

    popd
end
