function prompt_pwd --description 'Print the current working directory, shortend to fit the prompt'
	echo -n "$fish_prompt_cwd"
switch "$PWD"
case "$HOME"
echo -n '~'
return
end
   
if test $COLUMNS -gt 100
echo -n $PWD | sed -e "s|^$HOME|~|"
else if test $COLUMNS -gt 80
echo -n $PWD | sed -e "s|^$HOME|~|" -e 's-\(\.\{0,1\}[^/]\{1,2\}\)\([^/]*\)/-\1/-g'
else 
echo -n (basename $PWD)
end
end
