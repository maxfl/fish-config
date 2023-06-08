function _set_background_light --description 'Set colorscheme for light background'
    fish_config theme choose "ayu Light"
    echo y | fish_config theme save
    if type -q vivid
        set -Ux LS_COLORS (vivid generate solarized-light)
    end
end
