function addtogitignore-masks --description 'Add masks to gitignore'
	for f in (git st --porcelain | grep '^??' | cut -d\  -f2)
set -l extname (extname $f)
switch $f
case '*.pdf'
continue
case '*.synctex.gz'
set extname synctex.gz
end
echo '*.'$extname
end >> .gitignore
end
