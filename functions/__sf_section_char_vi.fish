#
# Prompt character
#

function __sf_section_char_vi -d "Display the prompt character"
	# ------------------------------------------------------------------------------
	# Configuration
	# ------------------------------------------------------------------------------

	__sf_util_set_default SPACEFISH_CHAR_VI_PREFIX ""
	__sf_util_set_default SPACEFISH_CHAR_VI_SUFFIX " "
	__sf_util_set_default SPACEFISH_CHAR_VI_SYMBOL "❯"
	__sf_util_set_default SPACEFISH_CHAR_VI_COLOR_SUCCESS     normal
    __sf_util_set_default SPACEFISH_CHAR_VI_COLOR_FAILURE     --background red
    __sf_util_set_default SPACEFISH_CHAR_VI_COLOR_INSERT      normal
    __sf_util_set_default SPACEFISH_CHAR_VI_COLOR_NORMAL      white
    __sf_util_set_default SPACEFISH_CHAR_VI_COLOR_REPLACE_ONE red
    __sf_util_set_default SPACEFISH_CHAR_VI_COLOR_VISUAL      yellow

	# ------------------------------------------------------------------------------
	# Section
	# ------------------------------------------------------------------------------

	# Color $SPACEFISH_CHAR_VI_SYMBOL red if previous command failed and
	# color it in green if the command succeeded.
	set -l color

	if test $sf_exit_code -eq 0
		set color $SPACEFISH_CHAR_VI_COLOR_SUCCESS
	else
		set color $SPACEFISH_CHAR_VI_COLOR_FAILURE
	end

	switch $fish_bind_mode
		case default
			set --append color $SPACEFISH_CHAR_VI_COLOR_NORMAL
		case insert
			set --append color $SPACEFISH_CHAR_VI_COLOR_INSERT
		case replace_one
			set --append color $SPACEFISH_CHAR_VI_COLOR_REPLACE_ONE
		case visual
			set --append color $SPACEFISH_CHAR_VI_COLOR_VISUAL
	end
    set color (set_color $color)

	__sf_lib_section \
		$color \
		$SPACEFISH_CHAR_VI_PREFIX \
		$SPACEFISH_CHAR_VI_SYMBOL \
		$SPACEFISH_CHAR_VI_SUFFIX
end
