function add-docdb-bib-entry --description 'Add DocDB bib entry for given pdf (from selection)'
	eval set newargv (getopt -s sh -l authors:,title:,id:,url:,month:,year:,institution:,simulate,prefix:,move,type: -o a:,t:,i:,u:,m:,y:,s,p:,T: -- $argv; echo $status)
    if test "$newargv[-1]" = 1
        echo Error
        return 1
    else
        set -e newargv[-1]
    end
    echo $newargv

    set -l authors; set -l title; set -l id; set -l url; set -l month; set -l year; set -l institution; set -l simulate; set -l prefix; set -l move;
    set -l type internal publication
    set -l bib /dev/null
    while set -q newargv[1]
        if test $newargv[1] = '--'
            set -e newargv[1]
            break
        end
        switch $newargv[1]
            case -- --authors -a
            set authors $newargv[2]
            set -e newargv[1]

            case -- --title -t
            set title $newargv[2]
            set -e newargv[1]

            case -- --id
            set id $newargv[2]
            set -e newargv[1]

            case -- --institution -i
            set institution $newargv[2]
            set -e newargv[1]

            case -- --url -u
            set url $newargv[2]
            set -e newargv[1]

            case -- --month -m
            set month $newargv[2]
            set -e newargv[1]

            case -- --year -y
            set year $newargv[2]
            set -e newargv[1]

            case -- --prefix -p
            set prefix $newargv[2]

            case -- --simulate -s
            set simulate 1

            case -- --move
            set move $newargv[2]/
            set -e newargv[1]

            case -- --type -T
            set type $newargv[2]
            set -e newargv[1]
        end
        set -e newargv[1]
    end
    set -l pdf $newargv[1]
    if not set -q id[1]
        if not set id (string match -r '_(\d+)_' $pdf)[2]
            set_color red
            echo Can not determine document id from filename $pdf
            return 1
        end
        set_color green
        echo Guessed ID: $id
        set_color normal
    end
    if not set -q url[1]
        set url "http://dayabay.ihep.ac.cn/cgi-bin/DocDB/ShowDocument?docid=$id"
    end

    #if set -1 move[1]
        #set -l newname docdb_$id_
    #end
    if not set -q simulate[1]
        set bib $pdf''.bib
    end

    #set -l --long

    echo

    echo \
"@techreport{docdb$id,
author      = {$authors},
title       = {$title},
type        = {$type}, " | tee $bib

set -q month[1];
and set -q year[1];
and echo \
"year        = {$year},
month       = {$month}," | tee -a $bib

set -q institution[1]
and echo "institution = {$institution}," | tee -a $bib

set -q url[1]
and echo "url       = {$url}," | tee -a $bib

echo -n "}" | tee -a $bib

    echo "    > $bib"
end
