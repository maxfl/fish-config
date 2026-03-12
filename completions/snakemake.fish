function __fish_complete_snakemake
    set -l snakemake_argv $argv
    set -l _flag_snakefile
    argparse -i s/snakefile= -- (commandline --current-process --tokens-expanded) 2>/dev/null
    if set -q _flag_snakefile[1]
        set --prepend _flag_snakefile -s
    end
    snakemake $_flag_snakefile $snakemake_argv 2>/dev/null
end

# snakefile
complete -c snakemake -s s -l snakefile    -d "Snakefile to use" --require-parameter -a '(__fish_complete_suffix "*.snakemake")'
complete -c snakemake -d "Rule" -a '(__fish_complete_snakemake --list-rules)' --condition 'string match --invert --quiet -- "-*" (commandline -t)'

# execution
complete -c snakemake -s c -l cores        -d "Number of cores" --require-parameter -a '(seq 1 (nproc))'
complete -c snakemake -s f -l force        -d "Force execution of selected targets"
complete -c snakemake -s F -l forceall     -d "Force execution of all targets"
complete -c snakemake -s n -l dry-run      -d "Do not execute"

# changes
complete -c snakemake      -l list-changes -l lc -d "List files with changes" --require-parameter -a 'params code input'

# internals
complete -c snakemake      -l unlock       -d "Remove lock on the working directory"
complete -c snakemake -l cleanup-metadata -l cm -d "Cleanup metadata" --require-parameter --force-files

# output
complete -c snakemake -s p -l printshellcmds -d "Print shell commands"
complete -c snakemake -s q -l quiet        -d "Hide certain information" -a "all host progress reason rules" --no-files
complete -c snakemake      -l verbose      -d "Be verbose" 

# rules
complete -c snakemake -s l -l list-rules -l list -d "List rules"
complete -c snakemake      -l list-target-rules -l lt -d "List target rules"
complete -c snakemake -s w -l latency-wait -l output-wait -d "Number of seconds to wait for output file" --require-parameter --no-files

# graphs
complete -c snakemake      -l filegraph       -d "Print file graph"
complete -c snakemake      -l rulegraph       -d "Print rule graph" -a "dot mermaid-js"
complete -c snakemake      -l d3dag           -d "DAG in D3.js"
