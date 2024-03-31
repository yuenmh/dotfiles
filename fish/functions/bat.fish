function bat --wraps bat
    if type batcat > /dev/null
        batcat
    else if type bat > /dev/null
        bat
    else
        cat
    end
end
