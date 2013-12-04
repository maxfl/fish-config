function vi_mode_user --description 'User keybindings for vi mode'
	switch "$argv[1]"
	case insert
		#
		# Insert mode
		#
		bind \ee .edit_cmd
		bind \ex .cmd_exec
		bind \eh .cmd_help

		bind \ej history-token-search-forward
		bind \ek history-token-search-backward
		bind \es .runsudo
		bind \er 'commandline -C 0; commandline -i "run "; commandline -f execute'

		bind \ed "set -l cl (commandline -o); if set -q cl[1]; commandline -f kill-word; else; dirh; commandline -f repaint; end"

	case normal
		#
		# Normal mode
		#
		bind -e \e
		bind \ee .edit_cmd
		bind \ex .cmd_exec
		bind \es .runsudo
		bind \er 'commandline -C 0; commandline -i "run "; commandline -f execute'

		bind K .cmd_help

		#case g
		#
		# 'g' mode
		#

	end
end
