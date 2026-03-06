function relocate-pacman-cache --description 'move pacman cache from / to /data and remove old files'
    set -l dest /data/prog/pacman_cache
    set -l source /var/cache/pacman/pkg
    
    pushd $source
    for f in *.zst
        test -L $f
        and continue
        
        sudo mv -v $f $dest/ 
        and sudo ln -sv $dest/$f
    end
    
    popd
    pushd $dest
    and for f in *.zst
        test -L $source/$f
        or sudo rm -v $f
    end
    popd
end
