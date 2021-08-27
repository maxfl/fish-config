function add-bib-entry --description 'Add bib entry for given pdf (from selection)'
    argparse --min-args 1 'tbd' -- $argv
    or begin
        echo Invalid commandline: $argv
        return 1
    end
    set -l suffix .bib
    set pdf $argv[1]
    if set -q _flag_tbd
        touch $pdf.tbd
    end

	set -l bib $pdf$suffix
    xsel | tee $bib
    echo '' >> $bib
    echo '' >> $bib
    echo "    > $bib"
end
