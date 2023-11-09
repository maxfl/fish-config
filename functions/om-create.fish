function om-create --argument dir
    test "$dir"; or return 1
    mkdir $dir
    and cd $dir
    and xsel -b | tee 00_readme.wiki | bat -l wiki

    read -n1 -l do_download -P "Download? [y/N]"
    switch $do_download
        case y Y
            om-download-wiki 00_readme.wiki
            or echo Error!
            ls -l
        case nN '*'
            prevd
    end
end
