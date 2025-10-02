function runlatex
    argparse -N 0 -X 1 m/manual "M/mask=" -- $argv
    or return 1
    set -l fname $argv[1]
    eval set -l watch $_flag_mask

    if not set -q fname[1]
        set fname *_subfile.tex
    end
    set -l basename (basename $fname .tex)
    if test -f $basename.pdf && not contains zathura (jobs -c)
        zathura $basename.pdf &
    end
    
    while true
        if set -q _flag_manual
            read
            or break
        end
        latexrun --latex-cmd lualatex $basename.tex
        ls -lh $basename.pdf
        if not contains zathura (jobs -c)
            zathura $basename.pdf &
        end
        if not set -q _flag_manual
            inotifywait -e modify *.tex (find . -maxdepth 2 -xtype f -name "*.pdf") $watch
        end
        echo --------------------------------------------------
    end
end
