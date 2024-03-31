function venv-activate
    set -l venv_paths \
        ".venv/bin/activate.fish" \
        "venv/bin/activate.fish" \

    for venv_path in $venv_paths
        if test -f $venv_path
            source $venv_path
            set_color normal; echo -n "activated virtual environment: "
            set_color cyan;   echo -n "`$venv_path`"
            set_color normal; echo ""
            return 0
        end
    end

    set_color red; echo -n "error: "
    set_color normal; echo "no virtual environment found"
    return 1
end
