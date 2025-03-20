function add-publication --description 'Add publication with bib entry'
    set -l argparse_opts --min-args 3 tbd j/journal= h/help a/arxiv= s/simulate b/bib tar
    argparse $argparse_opts -- $argv
    or begin
        echo Invalid commandline: $argv
        echo Options: "$argparse_opts"
        echo Positionals: arxiv_file author title [...]
        return 1
    end
    if test "$_flag_help"
        echo Options: "$argparse_opts"
        echo Positionals: arxiv_file author title [...]
        return
    end
    set filename $argv[1]
    set author $argv[2]
    set -e argv[1 2]

    set -l arxivnum
    if test "$_flag_arxiv"
        set arxivnum $_flag_arxiv
    else
        set arxivnum (basename $filename .pdf)
    end
    set -l journal ""
    if test "$_flag_journal"
        set journal .$_flag_journal
    end
    set -l namebase (string join _ $author $arxivnum$journal $argv)
    set -l newname $namebase.pdf

    if test "$_flag_simulate"
        echo Simulating: filename '->' $newname
        if test "$_flag_bib"
            echo Setup bibliography from the clipboard
        end
        return
    end

    if not mv -vi $filename $newname
        return 1
    end

    if test "$_flag_bib"
        add-bib-entry $newname $_flag_tbd
    end
    # echo -n $newname | xsel
    echo -n $newname | wl-copy

    if test "$arxivnum"
        if test "$_flag_tar"
            arxiv-download-tar $arxivnum $namebase
        else
            echo "Download tar.gz:"
            echo curl https://arxiv.org/e-print/$arxivnum -o $namebase.tar.gz
        end
    end
end
