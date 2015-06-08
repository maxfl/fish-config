function proxy-off --description 'Disable proxy'
	for env in no_proxy http_proxy https_proxy ftp_proxy rsync_proxy 
        set -l env1 (echo $env |  tr '[:lower:]' '[:upper:]')
        set -e $env
        set -e $env1
    end
    echo "Proxy environment variable removed."
    set -xL | grep -i proxy
end
