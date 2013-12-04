function tvim --description 'Run gvim in tmux session'
	tmux new-session "gvim -f $argv"
end
