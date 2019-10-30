function .unsetcern -d "Unset CERN path"
    test $CERN; or return 1
	varidel PATH $CERN/$CERN_LEVEL/bin
	varidel LD_LIBRARY_PATH $CERN/$CERN_LEVEL/lib
	set -e CERN
    set -e CERN_LEVEL
end
