function gitprompt --description 'Make right prompt display git status'
	function fish_right_prompt
        #__terlar_git_prompt
        __fish_git_prompt '│%s'
    end
end
