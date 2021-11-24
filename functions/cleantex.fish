function cleantex --description 'Remove intermediate tex files'
for mask in '*.aux' '*.fdb_latexmk' '*.fls' '*.log' '*.out' '*_vimtex.pdf' '*.synctex.gz' '*.toc' latex.out
if eval set -l files $mask
command rm -rf $files $argv
end
end
end
