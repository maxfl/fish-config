function add-arxiv-pub --description 'Copy publication from arxiv'
    argparse --min-args 3 'tbd' 'p/publication=' 'j/journal=' -- $argv
    or begin
        echo Invalid commandline: $argv
        return 1
    end
    set filename $argv[1]
    set exp $argv[2]
    set -e argv[1 2]

    set -l basename (basename $filename .pdf)
    set -l newname (string join _ $exp $basename $argv).pdf

    echo $filename '->' $newname
    if mv -vi $filename $newname
        add-bib-entry $newname $_flag_tbd
        echo -n $newname | xsel
    end

    if begin
        set -q _flag_publication
        and set -q _flag_journal
    end
        set -l pubname (string join _ $exp $basename.$_flag_journal $argv).pdf
        mv -vi $_flag_publication $pubname
        echo -n $pubname | xsel
    end
end
