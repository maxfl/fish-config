function fix-terminal-width --description 'Catch SIGWINCH when terminal is resized and reset terminal width to a specific value' --argument-names width
    function wide-terminal --on-signal WINCH --inherit-variable width
        stty columns $width
    end
    wide-terminal
end
