function .unsetclhep -d "Unset CLHEP path"
    set -q CLHEP_LIB_DIR; or exit 1
	varidel LD_LIBRARY_PATH $CLHEP_LIB_DIR
    each CLHEP_BASE_DIR CLHEP_LIB_DIR CLHEP CLHEP_LIB CLHEP_INCLUDE_DIR -- set -e
end
