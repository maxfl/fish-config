function add-arxiv-pub --description 'Copy publication from arxiv'
    set -l argparse_opts --min-args 3 tbd j/journal= h/help a/arxiv= s/simulate b/bib
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
    set -l newname (string join _ $author $arxivnum$journal $argv).pdf

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
    echo -n $newname | xsel
end
