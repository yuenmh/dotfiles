function list_all_bins
    for p in $PATH
        ls -1 $p
    end \
    | awk '!seen[$0]++ { print $0 }' \
    | sort
end

function launch
    set -l flag '/tmp/_launcher_opened'
    if test -e $flag
        return
    end
    touch $flag

    set -l bin_name (list_all_bins | fzf)
    if test -n "$bin_name"
        i3-msg -t command exec $bin_name
    end

    rm $flag
end
