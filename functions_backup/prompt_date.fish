function prompt_date --description 'Print current date and time'
    set -l date (date +'%a %H:%M')
    echo -n " $fish_prompt_date"[$date]
end
