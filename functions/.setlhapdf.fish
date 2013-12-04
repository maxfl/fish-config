function .setlhapdf -d "Set LHAPDF path"
	set -gx LHAPATH $argv[1]
	set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH $LHAPATH/lib
	set -gx PATH $PATH $LHAPATH/bin
	set -gx LHAPDFSETS (lhapdf-config --pdfsets-path)
    varclear LD_LIBRARY_PATH PATH
end
