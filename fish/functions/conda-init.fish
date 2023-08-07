function conda-init -d 'Alias to activate a conda environment'
    eval $CONDA_PATH "shell.fish" "hook" | source
    # Disable the conda prompt change because I am using starship
    $CONDA_PATH config --set changeps1 False
end
