function .setfluka --description 'Set FLUKA path'
	set -gx FLUPRO $argv[1]
	if test (count $argv) -gt 1
		set -gx FLUVMC $argv[2]
		set -gx LD_LIBRARY_PATH $FLUVMC/lib/tgt_linux $LD_LIBRARY_PATH
        varclear LD_LIBRARY_PATH
	end
end
