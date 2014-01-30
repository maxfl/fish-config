function prompt_git
	if not set -q git_prompt
		return
	end
	__fish_git_prompt $argv
end
