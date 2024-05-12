function z
    set -l orig_dir (pwd)
    pushd ~
    set -l res (find * -type d | fzf)
    popd
    if test -n "$res"
        cd ~/$res
        return 0
    end
    return 1
end
