complete -c snakemake -s c -l cores        -d "Number of cores" --require-parameter --no-files
complete -c snakemake -s f -l force        -d "Force execution of selected targets"
complete -c snakemake -s F -l forceall     -d "Force execution of all targets"
complete -c snakemake -s n -l dry-run      -d "Do not execute"
complete -c snakemake -s p -l printshellcmds -d "Print shell commands"
complete -c snakemake      -l unlock       -d "Remove lock on the working directory"

complete -c snakemake -s q -l quiet        -d "Hide certain information" -a "all host progress reason rules" --no-files
complete -c snakemake      -l verbose      -d "Be verbose" 

complete -c snakemake --cleanup-metadata -l cm -d "Cleanup metadata" --require-parameter --force-files

# rules
complete -c snakemake -s l -l list-rules -l list -d "List rules"
complete -c snakemake      -l list-target-rules -l lt -d "List target rules"
complete -c snakemake -s w -l latency-wait -l output-wait -d "Number of seconds to wait for output file" --require-parameter --no-files

# graphs
complete -c snakemake      -l filegraph       -d "Print file graph"
complete -c snakemake      -l rulegraph       -d "Print rule graph" -a "dot mermaid-js"
complete -c snakemake      -l d3dag           -d "DAG in D3.js"
