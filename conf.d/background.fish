function _set_light -d 'Set colorscheme for light background'
    fish_config theme choose "ayu Light"
    echo y | fish_config theme save
end

function _set_dark -d 'Set colorscheme for dark background'
    fish_config theme choose "ayu Mirage"
    echo y | fish_config theme save
end
