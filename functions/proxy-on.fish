function proxy-on --description 'Enable proxy server'
	if set -q argv[1]
        set -l valid (echo $argv[1] | sed -n 's/\([0-9]\{1,3\}.\)\{4\}:\([0-9]\+\)/&/p')
        if test "$valid" != "$argv[1]" 
            echo "Invalid address. Should be <IP>:<PORT>" >&2
            return 1
        end

        set -gx http_proxy "http://$valid/"
    else
        read -p 'echo username:\ ' -l username
        if test "$username" != "" 
            read -p 'echo password:\ ' -l password
            set username "$username:$password@"
        end

        read -p 'echo server:\ ' -l server
        read -p 'echo port:\ ' -l port
        set -gx http_proxy "http://$username$server:$port/"
    end

	set -gx no_proxy "localhost,127.0.0.1,localaddress,.localdomain.com"
    set -gx NO_PROXY $no_proxy
    for env in http_proxy https_proxy ftp_proxy rsync_proxy 
        set -l env1 (echo $env |  tr '[:lower:]' '[:upper:]')
        set -gx $env  $http_proxy
        set -gx $env1 $http_proxy
    end

    echo "Proxy environment variables set:"
    set -xL | grep -i proxy
end
