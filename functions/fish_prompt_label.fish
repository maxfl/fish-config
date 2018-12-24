function fish_prompt_label
	if not set -q fish_prompt_label
return
end
echo -n $fish_prompt_label
end
