function sshuttle --description 'SShuttle wrapper'
	set -lx SHELL /bin/bash
 	command sshuttle $argv
end
