function prompt_pwd --description 'Print the current working directory, shortend to fit the prompt'
    echo -n "$fish_prompt_cwd"
	switch "$PWD"
		case "$HOME"
		echo -n '~'
		case '*'
		echo -n $PWD | sed -e "s|^$HOME|~|" -e 's-\(\.\{0,1\}[^/]\{1,2\}\)\([^/]*\)/-\1/-g'
	end
end
