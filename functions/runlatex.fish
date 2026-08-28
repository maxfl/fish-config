function runlatex
    set -l _flag_viewer zathura

    argparse -N 0 -X 1 m/manual M/mask=+ t/threshold= v/viewer= -- $argv
    or return 1

    if pgrep inotifywait > /dev/null
        echo Seems like another runlatex instance is already running...
        return 1
    end

    set -l fname $argv[1]

    set -l mindepth 1
    set -l maxdepth 7

    if not set -ql fname[1]
        set fname *_subfile.tex
    end
    set -l basename (basename $fname .tex)
    set -l pdfname $basename.pdf
    set -l stable_pdfname _$basename.pdf
    set -l large_pdfname "$basename"_full.pdf

    if test -f $stable_pdfname && not contains $_flag_viewer (jobs -c)
        $_flag_viewer $stable_pdfname &
    end
    
    while true
        if set -ql _flag_manual
            read
            or break
        end

        echo latexrun --latex-cmd lualatex $fname
        latexrun --latex-cmd lualatex $fname
        if and true
            cp -v $pdfname $stable_pdfname

            set -ql _flag_threshold
            if and test (find $pdfname -type f -size +$_flag_threshold 2>/dev/null)
                cp -v $pdfname $large_pdfname
            end
        else
            echo "Compilation error"
        end

        ls -lh $pdfname

        if not contains $_flag_viewer (jobs -c)
            $_flag_viewer $stable_pdfname &
        end

        if not set -ql _flag_manual
            eval set -l watch $_flag_mask

            inotifywait -e modify *.tex (find . -mindepth $mindepth -maxdepth $maxdepth -xtype f -name "*.pdf") $watch
        end
        echo --------------------------------------------------
    end
end
