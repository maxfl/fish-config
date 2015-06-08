function addtogitignore
	for f in $argv
if not grep $f .gitignore -q
echo $f >> .gitignore
end
end
end
