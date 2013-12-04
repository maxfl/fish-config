function sshuttle_quick --description 'Connect sshuttle to given host' --argument host
	set -e argv[1]
set -lx SHELL /bin/bash
command sshuttle --dns -vvr $host 0/0 $others $argv
end
