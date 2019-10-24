function setlist -d 'Operation on variable lists' -S -a method var
    set -e argv[1]
    switch "$method"
        case pop
            __setlist_pop $argv

        case rm-value
            __setlist_rm_value $argv

        case '*'
            set_color red
            echo "Unsupported method '$method'"
            set_color normal
            return 1
    end
end
