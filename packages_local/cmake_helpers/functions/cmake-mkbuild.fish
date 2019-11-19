function cmake-mkbuild -d 'Prepare new cmake build folder'
    set -l wd $PWD
    pushd (realpath build)

    command rm -rf ./*
    and cmake $wd $argv

    popd
end
