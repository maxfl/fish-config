function rundark --description 'Run command in a temporarily dark konsole colorscheme'
    set --local _flag_scheme Breeze
    argparse -s k/keep c/command s/scheme= -- $argv

    konsoleprofile Colorscheme=$_flag_scheme
    if set -q argv[1]
        if set -q  _flag_command
            command $argv
        else
            $argv
        end
    end

    set --local -q __flag_keep
    or konsoleprofile Colorscheme=Default
end
