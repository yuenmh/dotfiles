function activate-venv
    set -l venv_paths \
        ".venv/bin/activate.fish" \
        "venv/bin/activate.fish" \

    for venv_path in $venv_paths
        if test -f $venv_path
            source $venv_path
            set_color green; echo -n "Activated virtualenv: "
            set_color cyan; echo -n $venv_path
            set_color green; echo "."
            return 0
        end
    end

    set_color red
    echo "No virtualenv found."
    return 1
end
