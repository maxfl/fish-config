function add-bib-entry --description 'Add bib entry for given pdf (from selection)' --argument pdf
	set -l bib $pdf''.bib
    xsel | tee $bib
    echo '' >> $bib
    echo '' >> $bib
    echo "    > $bib"
end
