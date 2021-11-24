type -fq starship
or begin
    set_color green
    echo Install starship
    echo rua install starship-git
    set_color normal
    exit
end

starship init fish --print-full-init | source
