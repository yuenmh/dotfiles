function conda-activate
    eval /home/evan/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
