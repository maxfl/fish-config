function .unsetvgm -d "Unset VGM path"
    set -q VGM_INSTALL; or exit 1
	varidel LD_LIBRARY_PATH $VGM_INSTALL/lib/$VGM_SYSTEM
    each VGM_SYSTEM VGM_INSTALL USE_VGM -- set -e
end
