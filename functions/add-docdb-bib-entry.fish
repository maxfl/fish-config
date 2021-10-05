function add-docdb-bib-entry --description 'Add DocDB bib entry for given pdf (from selection)'
    set -l _flag_type internal publication
    set -l opts \
             --min-args 1 \
             'a/authors=' 't/title=' 'id=' 'i/institution=' 'u/url=' 'd/docdb=' \
             'm/month=!_validate_int' 'T/type=' 'y/year=!_validate_int' 'v#version' \
             'w/write' 'h/help'

    set -l _flag_help
    argparse  $opts -- $argv
    or set _flag_help error

    if not test "$_flag_help"
        for flag in author title docdb
            if not set -q _flag_$flag
                set -l _flag_help $flag
            end
        end
    end

    if test "$_flag_help"
        echo -- Options: (string escape -- $opts)

        switch $_flag_help
        case -h --help
            return
        case error
            return 1
        case '*'
            echo Flag $_flag_help is not specified
            return 1
        end
    end

    set -l pdf $argv[1]
    set _flag_authors (string replace -r -a '\n' ' and ' $_flag_authors)
    if set -q _flag_version
        set _flag_version v$_flag_version
        set _flag_title "$_flag_title ($_flag_version)"
    end

    set -l id $_flag_id
    if not set -q _flag_id
        if not set id (string match -r '_(\d+)_' $pdf)[2]
            set_color red
            echo Can not determine document id from filename $pdf
            return 1
        end
        set_color green
        echo Guessed ID: $id
        set_color normal
    end

    set -l url $_flag_url
    if not set -q _flag_url
        switch $_flag_docdb
            case j juno
                set url "https://juno.ihep.ac.cn/cgi-bin/Dev_DocDB/ShowDocument?docid=$id"
                set _flag_docdb juno
            case d dayabay
                set url "https://dayabay.ihep.ac.cn/cgi-bin/DocDB/ShowDocument?docid=$id"
                set _flag_docdb dayabay
            case ''
                echo DocDB is not defined
                return 1
            case '*'
                echo Invalid docdb: $_flag_docdb
                return 1
        end
    end

    set -l bib /dev/null
    set -l bibcomment
    if set -q _flag_write
        set bib $pdf''.bib
    else
        set bibcomment " #$pdf.bib"
    end
    echo

    echo \
"@techreport{$_flag_docdb-docdb$id$_flag_version,
    author      = {$_flag_authors},
    title       = {$_flag_title},
    type        = {$_flag_type}, " \
| tee $bib

set -q _flag_month;
and set -q _flag_year;
and echo \
"    year        = {$_flag_year},
    month       = {$_flag_month}," | tee -a $bib

if set -q _flag_institution
    echo "    institution = {$_flag_institution}," | tee -a $bib
end

set -q url[1]
and echo "    url       = {$url}," | tee -a $bib

echo "}
" | tee -a $bib

    echo "> $bib$bibcomment"
end
