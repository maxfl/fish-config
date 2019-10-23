# Defined in /tmp/fish_funced.9Rq3OURuqg.fish @ line 2
function prompt_history --description 'Print current history to prompt'
	if not set -q fish_history
return
end
printf ' {%s}' $fish_history
end
