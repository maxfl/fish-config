function efile --description 'Edit text file interactively' --argument name
	if not test "$name"
return 1
end
set -l IFS
read -c (cat $name) -l result
and echo $result > $name
end
