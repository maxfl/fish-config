function .unsetlhapdf -d "Unet LHAPDF path"
    set -q LHAPATH; or exit 1
	varidel LD_LIBRARY_PATH $LHAPATH/lib
	varidel PATH $LHAPATH/bin
	each LHAPATH LHAPDFSETS -- set -e
end
