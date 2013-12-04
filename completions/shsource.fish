complete -c shsource -x -a "(__fish_complete_suffix .sh)"
complete -c shsource -l ext  -d 'Use shell exec'
complete -c shsource -l sh   -d 'Use /bin/sh for source'
complete -c shsource -l bash -d 'Use /bin/bash for source'
complete -c shsource -l csh  -d 'Use /bin/tcsh for source'
#complete -c source -x -a "(__fish_complete_suffix .csh)"
