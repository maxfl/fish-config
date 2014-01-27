function set_user_colors
    set -U fish_color_autosuggestion 505050 yellow
    set -U fish_color_command green
    set -U fish_color_comment red
    set -U fish_color_cwd green
    set -U fish_color_cwd_root red
    set -U fish_color_error 'red' '--bold'
    set -U fish_color_escape cyan
    set -U fish_color_history_current cyan
    set -U fish_color_match cyan
    set -U fish_color_normal normal
    set -U fish_color_operator cyan
    set -U fish_color_param '00afff' 'cyan'
    set -U fish_color_quote brown
    set -U fish_color_redirection magenta
    set -U fish_color_search_match --background=purple
    set -U fish_color_valid_path --underline
    set -U fish_color_selection --background=yellow

    set -U fish_pager_color_completion normal
    set -U fish_pager_color_description 707070 darkgray
    set -U fish_pager_color_prefix cyan
    set -U fish_pager_color_progress cyan
    set -U fish_pager_color_secondary 191919 black

    set -U fish_prompt_cwd	(set_color blue)
    set -U fish_prompt_normal (set_color normal)
    set -U fish_prompt_root (set_color red)
    set -U fish_prompt_user (set_color green)
    set -U fish_prompt_jobs (set_color 505050)

    set -U fish_color_mode_insert (set_color green)
    set -U fish_color_mode_default (set_color blue)
    set -U fish_color_mode_visual (set_color cyan)

    set -U fish_cursor_insert  line
    set -U fish_cursor_default block
    set -U fish_cursor_visual  underscore
    set -U fish_cursor_unknown block blink

    set -U __fish_git_prompt_showcolorhints 1
    set -U __fish_git_prompt_showdirtystate 1
    set -U __fish_git_prompt_show_informative_status 1

    set -U fish_user_config_set 1
end
