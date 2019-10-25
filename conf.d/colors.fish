if not status --is-interactive
    exit
end

set -x LS_COLORS (sh -c 'eval $(dircolors -b); echo $LS_COLORS')

set -g fish_color_autosuggestion 505050 yellow
set -g fish_color_command green
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_error 'red' '--bold'
set -g fish_color_escape cyan
set -g fish_color_history_current cyan
set -g fish_color_match cyan
set -g fish_color_normal normal
set -g fish_color_operator cyan
set -g fish_color_param '00afff' 'cyan'
set -g fish_color_quote brown
set -g fish_color_redirection magenta
set -g fish_color_search_match --background=purple
set -g fish_color_valid_path --underline
set -g fish_color_selection --background=yellow

set -g fish_pager_color_completion normal
set -g fish_pager_color_description 707070 darkgray
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan
set -g fish_pager_color_secondary 191919 black

set -g fish_prompt_cwd	(set_color blue)
set -g fish_prompt_normal (set_color normal)
set -g fish_prompt_root (set_color red)
set -g fish_prompt_user (set_color green)
set -g fish_prompt_jobs (set_color 505050)
set -g fish_prompt_status (set_color red)
set -g fish_prompt_date (set_color 505050)

set -g fish_color_mode_insert (set_color green)
set -g fish_color_mode_default (set_color blue)
set -g fish_color_mode_visual (set_color cyan)

set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_show_informative_status 1
