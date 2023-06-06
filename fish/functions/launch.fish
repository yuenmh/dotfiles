function list_all_bins
    for p in $PATH
        ls -1 $p
    end \
    | awk '!seen[$0]++ { print $0 }' \
    | sort
end

function launch
    set -l bin_name (list_all_bins | fzf)
    if test -n "$bin_name"
        set -l bin_path (which $bin_name)
        $bin_path &> /dev/null &
    end
end
