function .unsetroot -d "Unset ROOT path"
    set -q ROOTSYS; or exit 1
	varidel PATH $ROOTSYS/bin
	varidel LD_LIBRARY_PATH $ROOTSYS/lib 
	varidel PYTHONPATH $ROOTSYS/lib
    set -e ROOTSYS
end
