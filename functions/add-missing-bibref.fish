function add-missing-bibref
	set -l main $argv[1]
set -e argv[1]
set existing_refs (get-bib-refs $main)
for newbib in $argv
set -l newref (get-bib-refs $newbib)
if contains $newref -- $existing_refs
echo skip duplicate $newref 1>&2
continue
end
#echo add $newref
cat $newbib
end
end
