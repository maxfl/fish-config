function .setroot --description 'Set ROOT path'
	set -gx ROOTSYS $argv[1]
	set -gx PATH $ROOTSYS/bin $PATH
	set -gx LD_LIBRARY_PATH $ROOTSYS/lib $LD_LIBRARY_PATH
	set -gx PYTHONPATH $ROOTSYS/lib $PYTHONPATH
	varclear LD_LIBRARY_PATH PYTHONPATH PATH
end
