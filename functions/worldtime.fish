function worldtime --description 'World time'
	while true
set -l fmt +'%a %b %d %H:%M' $argv
set -lx TZ US/Eastern;        echo -n 'US:      '; date $fmt
set -lx TZ Chile/Continental; echo -n 'Chile:   '; date $fmt
set -lx TZ Europe/Prague;     echo -n 'Prague:  '; date $fmt
set -lx TZ Europe/Moscow;     echo -n 'Moscow:  '; date $fmt
set -lx TZ Asia/Hong_Kong;    echo -n 'Beijing: '; date $fmt
sleep 5
clear
end
end
