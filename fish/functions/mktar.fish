function mktar -d "Make a gzipped tarball of a directory, with progress bar"
    set -l dir $argv[1]
    set -l out $argv[2] 
    set -l size (du -sk $argv[1] | cut -f 1)
    tar -cf - $dir | pv -s $size > $out
end

