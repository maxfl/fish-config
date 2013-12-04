function xdg-mime-default --description 'Query default handler for the file'
	set -l file $argv[1]
if not set -q file[1]
return 1
end
set -l type (xdg-mime query filetype $file)
if not set -q type[1]
echo 'Can not determine the filetype'
return 1
end
xdg-mime query default $type
end
