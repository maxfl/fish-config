if not status --is-interactive
    exit
end

set -x LC_ALL $LANG
if test "$TERM" = rxvt-unicode-256color
    set -lx TERM xterm-256color
end
