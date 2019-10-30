function .unsetg4vmc -d "Unset G4VMC path"
    set -q G4VMC; or exit 1
	varidel LD_LIBRARY_PATH $G4VMC/lib/tgt_linux
    set -e G4VMC
end
