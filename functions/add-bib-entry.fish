function add-bib-entry --description 'Add bib entry for given pdf (from selection)'
    argparse --min-args 1 'tbd' -- $argv
    or begin
        echo Invalid commandline: $argv
        return 1
    end
    set -l pdf $argv[1]
    if not set -l oname (string replace .pdf .bib $pdf)
        set oname $pdf.bib
    end
    if set -q _flag_tbd
        touch $pdf.tbd
    end

    #xsel -b | tee $oname
    wl-paste | tee $oname
    echo '' >> $oname
    echo '' >> $oname
    echo "    > $oname"
end
