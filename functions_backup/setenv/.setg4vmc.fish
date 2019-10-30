function .setg4vmc -d "Set G4VMC path"
    set -gx G4VMC $argv[1]
	set -gx LD_LIBRARY_PATH $G4VMC/lib/tgt_linux $LD_LIBRARY_PATH
    varclear LD_LIBRARY_PATH
end
