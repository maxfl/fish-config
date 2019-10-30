function .setclhep -d "Set CLHEP path"
	set -gx CLHEP_BASE_DIR $argv[1]
	set -gx CLHEP_LIB_DIR $CLHEP_BASE_DIR/lib
	set -gx CLHEP_INCLUDE_DIR $CLHEP_BASE_DIR/include
	set -gx CLHEP_LIB CLHEP
	set -gx LD_LIBRARY_PATH $CLHEP_LIB_DIR $LD_LIBRARY_PATH
    varclear LD_LIBRARY_PATH
end
