function bat --wraps bat
    if type batcat > /dev/null
        batcat $argv
    else if type bat > /dev/null
        bat $argv
    else
        cat $argv
    end
end
