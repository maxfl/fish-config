function arxiv-download-tar --description 'Download tar.gz from the arxiv based on ID' --argument arxivnum namebase
    if not test "$namebase"
        echo "Need two arguments: arxivnum namebase"
        return 1
    end
    set -l namebase (basename (basename $namebase .pdf) .bib)
    curl https://arxiv.org/e-print/$arxivnum -o $namebase.tar.gz
end
