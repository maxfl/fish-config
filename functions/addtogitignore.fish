# Defined in /tmp/fish_funced.nhWsaYS4Le.fish @ line 2
function addtogitignore
    touch .gitignore
    for f in $argv
        if not grep -Fxq $f .gitignore
            echo $f >> .gitignore
        end
    end
end
