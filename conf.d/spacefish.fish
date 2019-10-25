
# PROMPT
#set -g SPACEFISH_PROMPT_ORDER vi_mode user dir host git package node exec_time jobs time line_sep exit_code char
set -g SPACEFISH_PROMPT_ORDER clear user dir host git package node exec_time jobs time line_sep exit_code char_vi
set -g SPACEFISH_PROMPT_ADD_NEWLINE false
set -g SPACEFISH_PROMPT_PREFIXES_SHOW false

# CHAR
if not set -q SPACEFISH_CHAR_SYMBOL
    set -g SPACEFISH_CHAR_SYMBOL '❯'
end
# DIR
set -g SPACEFISH_DIR_TRUNC_REPO false
set -g SPACEFISH_DIR_COLOR brblue
# GIT
set -g SPACEFISH_GIT_SYMBOL ''
# TIME
set -g SPACEFISH_TIME_FORMAT '%a %H:%M:%S'
set -g SPACEFISH_TIME_SHOW true
set -g SPACEFISH_TIME_COLOR brgrey
# VI mode
set -g SPACEFISH_VI_MODE_INSERT (set_color normal)I
set -g SPACEFISH_VI_MODE_NORMAL N
set -g SPACEFISH_VI_MODE_REPLACE_ONE (set_color red)R
set -g SPACEFISH_VI_MODE_VISUAL (set_color yellow)V
