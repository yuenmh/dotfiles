function conda_activate
    eval $CONDA_PATH "shell.fish" "hook" $argv | source
end
