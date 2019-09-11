# Defined in /tmp/fish_funced.R5FQjJiGmM.fish @ line 2
function add-arxiv-pub --description 'Copy publication from arxiv' --argument filename exp
	if not test $filename$exp
set_color red
echo Not enough parameters
return 1
end
set -e argv[1 2]
set -l basename (basename $filename .pdf)
set -l newname (string join _ $exp $basename $argv).pdf
echo $filename '->' $newname
if mv $filename $newname
add-bib-entry $newname
end
end
