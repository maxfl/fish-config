function scanpdf --description 'Scan an image to pdf' --argument ofile
	scanimage -x215mm -y297mm | pnmtops | ps2pdf - $ofile

end
