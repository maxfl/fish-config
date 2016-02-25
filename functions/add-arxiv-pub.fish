function add-arxiv-pub --description 'Copy publication from arxiv' --argument filename exp title
	if not test $filename$exp$title
set_color red
echo Not enough parameters
return 1
end
set -l basename (basename $filename .pdf)
set -l newname "$exp"_"$basename"_"$title".pdf
echo $filename '->' $newname
if mv $filename $newname
add-bib-entry $newname
end
end
