function add-arxiv-pub --description 'Copy publication from arxiv'
    argparse --min-args 3 'tbd' -- $argv
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
    if mv $filename $newname
        add-bib-entry $newname $_flag_tbd
    end
end
