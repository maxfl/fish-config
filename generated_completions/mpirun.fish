# mpirun
# Autogenerated from man page /usr/share/man/man1/mpirun.1.gz
# using Deroffing man parser
complete -c mpirun -s h -l help --description 'Display help for this command .'
complete -c mpirun -s q -l quiet --description 'Suppress informative messages from orterun duri… [See Man Page]'
complete -c mpirun -s v -l verbose --description 'Be verbose .'
complete -c mpirun -s V -l version --description 'Print version number.'
complete -c mpirun -s H -o host -l host --description 'List of hosts on which to invoke processes.'
complete -c mpirun -o hostfile -l hostfile --description 'Provide a hostfile to use.'
complete -c mpirun -o machinefile -l machinefile --description 'Synonym for -hostfile.'
complete -c mpirun -s c -s n -l n -o np --description 'Run this many copies of the program on the given nodes.'
complete -c mpirun -o npersocket -l npersocket --description 'On each node, launch this many processes times … [See Man Page]'
complete -c mpirun -o npernode -l npernode --description 'On each node, launch this many processes.'
complete -c mpirun -o pernode -l pernode --description 'On each node, launch one process -- equivalent to -npernode 1.'
complete -c mpirun -o loadbalance -l loadbalance --description 'Uniform distribution of ranks across all nodes.'
complete -c mpirun -o nolocal -l nolocal --description 'Do not run any copies of the launched applicati… [See Man Page]'
complete -c mpirun -o nooversubscribe -l nooversubscribe --description 'Do not oversubscribe any nodes; error (without … [See Man Page]'
complete -c mpirun -o bynode -l bynode --description 'Launch processes one per node, cycling by node … [See Man Page]'
complete -c mpirun -o bycore -l bycore --description 'Associate processes with successive cores if us… [See Man Page]'
complete -c mpirun -o bysocket -l bysocket --description 'Associate processes with successive processor s… [See Man Page]'
complete -c mpirun -o cpus-per-proc -l cpus-per-proc --description 'Use the number of cores per process if used wit… [See Man Page]'
complete -c mpirun -o cpus-per-rank -l cpus-per-rank --description 'Alias for -cpus-per-proc.'
complete -c mpirun -o bind-to-core -l bind-to-core --description 'Bind processes to cores.'
complete -c mpirun -o bind-to-socket -l bind-to-socket --description 'Bind processes to processor sockets.'
complete -c mpirun -o bind-to-none -l bind-to-none --description 'Do not bind processes.   (Default. ) .'
complete -c mpirun -o report-bindings -l report-bindings --description 'Report any bindings for launched processes.'
complete -c mpirun -o slot-list -l slot-list --description 'List of processor IDs to be used for binding MPI processes.'
complete -c mpirun -o rf -l rankfile --description 'Provide a rankfile file. P To manage standard I/O: .'
complete -c mpirun -o output-filename -l output-filename --description 'Redirect the stdout, stderr, and stddiag of all… [See Man Page]'
complete -c mpirun -o stdin -l stdin --description 'The MPI rank that is to receive stdin.'
complete -c mpirun -o tag-output -l tag-output --description 'Tag each line of output to stdout, stderr, and … [See Man Page]'
complete -c mpirun -o timestamp-output -l timestamp-output --description 'Timestamp each line of output to stdout, stderr, and stddiag.'
complete -c mpirun -o xml -l xml --description 'Provide all output to stdout, stderr, and stddi… [See Man Page]'
complete -c mpirun -o xterm -l xterm --description 'Display the specified ranks in separate xterm windows.'
complete -c mpirun -o path -l path --description '<path> that will be used when attempting to loc… [See Man Page]'
complete -c mpirun -l prefix --description 'Prefix directory that will be used to set the P… [See Man Page]'
complete -c mpirun -l preload-binary --description 'Copy the specified executable(s) to remote mach… [See Man Page]'
complete -c mpirun -l preload-files --description 'Preload the comma separated list of files to th… [See Man Page]'
complete -c mpirun -l preload-files-dest-dir --description 'The destination directory to be used for preloa… [See Man Page]'
complete -c mpirun -l tmpdir --description 'Set the root for the session directory tree for mpirun only.'
complete -c mpirun -o wd --description 'Synonym for -wdir.'
complete -c mpirun -o wdir --description 'Change to the directory <dir> before the user\'s… [See Man Page]'
complete -c mpirun -s x --description 'Export the specified environment variables to t… [See Man Page]'
complete -c mpirun -o gmca -l gmca --description 'Pass global MCA parameters that are applicable to all contexts.'
complete -c mpirun -o mca -l mca --description 'Send arguments to various MCA modules.'
complete -c mpirun -o debug -l debug --description 'Invoke the user-level debugger indicated by the… [See Man Page]'
complete -c mpirun -o debugger -l debugger --description 'Sequence of debuggers to search for when --debug is used (i. e.'
complete -c mpirun -o tv -l tv --description 'Launch processes under the TotalView debugger.'
complete -c mpirun -o aborted -l aborted --description 'Set the maximum number of aborted processes to display.'
complete -c mpirun -l app --description 'Provide an appfile, ignoring all other command line options.'
complete -c mpirun -o cf -l cartofile --description 'Provide a cartography file.'
complete -c mpirun -l hetero --description 'Indicates that multiple app_contexts are being … [See Man Page]'
complete -c mpirun -o leave-session-attached -l leave-session-attached --description 'Do not detach OmpiRTE daemons used by this application.'
complete -c mpirun -o ompi-server -l ompi-server --description 'Specify the URI of the Open MPI server (or the … [See Man Page]'
complete -c mpirun -o report-pid -l report-pid --description 'Print out mpirun\'s PID during startup.'
complete -c mpirun -o report-uri -l report-uri --description 'Print out mpirun\'s URI during startup.'
complete -c mpirun -o wait-for-server -l wait-for-server --description 'Pause mpirun before launching the job until omp… [See Man Page]'
complete -c mpirun -o server-wait-time -l server-wait-time --description 'The max amount of time (in seconds) mpirun shou… [See Man Page]'
complete -c mpirun -s d -l debug-devel --description 'Enable debugging of the OmpiRTE (the run-time l… [See Man Page]'
complete -c mpirun -l debug-daemons --description 'Enable debugging of any OmpiRTE daemons used by… [See Man Page]'
complete -c mpirun -l debug-daemons-file --description 'Enable debugging of any OmpiRTE daemons used by… [See Man Page]'
complete -c mpirun -o launch-agent -l launch-agent --description 'Name of the executable that is to be used to st… [See Man Page]'
complete -c mpirun -l noprefix --description 'Disable the automatic --prefix behavior There m… [See Man Page]'

