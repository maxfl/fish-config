function .setcern -d "Set CERN path"
	set -gx CERN $argv[1]
	set -gx CERN_LEVEL $argv[2]
	set -gx PATH $CERN/$CERN_LEVEL/bin $PATH
	set -gx LD_LIBRARY_PATH $CERN/$CERN_LEVEL/lib $LD_LIBRARY_PATH
    varclear LD_LIBRARY_PATH PATH
end
