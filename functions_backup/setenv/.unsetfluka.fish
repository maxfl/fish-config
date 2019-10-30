function .unsetfluka --description 'Unset FLUKA path'
	set -q FLUPRO; or return 1
    each FLUPRO FLUVMC -- set -e
    set -q LD_LIBRARY_PATH; and varidel LD_LIBRARY_PATH $FLUVMC/lib/tgt_linux
end
