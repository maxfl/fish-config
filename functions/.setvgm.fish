function .setvgm -d "Set VGM path"
	set -gx VGM_INSTALL $argv[1]
	set -gx VGM_SYSTEM Linux-g++
	set -gx USE_VGM 1
	set -gx LD_LIBRARY_PATH $VGM_INSTALL/lib/$VGM_SYSTEM $LD_LIBRARY_PATH
    varclear LD_LIBRARY_PATH
end
