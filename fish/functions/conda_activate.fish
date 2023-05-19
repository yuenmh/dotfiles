function conda_activate -d 'Alias to activate a conda environment'
    set -l initialized_flag _fish_conda_initialized
    if not set -q $initialized_flag
        eval $CONDA_PATH "shell.fish" "hook" | source
        set -g $initialized_flag 1
    end
    conda activate $argv
end
