function prompt_pwd --description 'Print the current working directory, shortend to fit the prompt'
	switch "$PWD"
		case "$HOME"
		echo '~'
		case '*'
		echo $PWD | 		sed -e "s|^$HOME|~|" -e 's-\(\.\{0,1\}[^/]\{1,2\}\)\([^/]*\)/-\1/-g'
	end


end
