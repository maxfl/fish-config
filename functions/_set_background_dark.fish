function _set_background_dark --description 'Set colorscheme for dark background'
    fish_config theme choose "ayu Mirage"
    echo y | fish_config theme save
    if type -q vivid
        set -Ux LS_COLORS (vivid generate solarized-dark)
    end
end
